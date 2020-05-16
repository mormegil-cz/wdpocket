import 'dart:collection';

import 'package:meta/meta.dart';

import '../util.dart';

enum EntityType { item, property }
enum ClaimRank { deprecated, normal, preferred }
enum SnakType { value, someValue, noValue }
enum ValueType { string, entityId, coordinate, quantity, time, monolingualText }

const String wikidataUrlPrefix = "http://www.wikidata.org/entity/";

String urlToQid(String url) => url.startsWith(wikidataUrlPrefix) ? url.substring(wikidataUrlPrefix.length) : null;

abstract class _EntityEnumerable {
  Set<String> collectAllReferredEntities();
}

abstract class _JsonSerializable {
  Map<String, dynamic> toJsonStructure();
}

abstract class Entity implements _EntityEnumerable, _JsonSerializable {
  Entity(this.qid, this.modified, this.lastRevId, this.labels, this.descriptions, this.aliases, this.claims);

  factory Entity.fromParsedJson(Map<String, dynamic> json) {
    switch (json["type"]) {
      case "item":
        return Item.fromParsedJson(json);
      case "property":
        return Property.fromParsedJson(json);
      default:
        throw FormatException("Invalid format or unknown entity type");
    }
  }

  String qid;
  DateTime modified;
  String lastRevId;

  Map<String, String> labels;
  Map<String, String> descriptions;
  Map<String, List<String>> aliases;
  Map<String, List<Claim>> claims;

  EntityType get type;

  @override
  Set<String> collectAllReferredEntities() => _collectAllPropertiesUsed(flatten(claims.values));

  @override
  String toString() => qid;
}

class Item extends Entity {
  Item(
      {@required String qid,
      @required Map<String, String> labels,
      @required Map<String, String> descriptions,
      @required Map<String, List<String>> aliases,
      @required Map<String, List<Claim>> claims,
      @required this.siteLinks,
      DateTime modified,
      String lastRevId})
      : super(qid, modified, lastRevId, labels, descriptions, aliases, claims);

  factory Item.fromParsedJson(Map<String, dynamic> json) => Item(
        qid: json["id"],
        labels: _multiLanguageStringsFromJson(json["labels"]),
        descriptions: _multiLanguageStringsFromJson(json["descriptions"]),
        aliases: _aliasesFromJson(json["aliases"]),
        claims: _claimsFromJson(json["claims"]),
        siteLinks: _siteLinksFromJson(json[r"sitelinks"]),
      );

  @override
  Map<String, dynamic> toJsonStructure() => {
        "type": "item",
        "id": qid,
        "labels": _multiLanguageStringsToJson(labels),
        "descriptions": _multiLanguageStringsToJson(descriptions),
        "aliases": _aliasesToJson(aliases),
        "claims": _mapOfListsToJson(claims),
        r"sitelinks": _mapToJson(siteLinks),
      };

  get type => EntityType.item;

  Map<String, SiteLink> siteLinks;
}

class Property extends Entity {
  Property(
      {@required String qid,
      @required Map<String, String> labels,
      @required Map<String, String> descriptions,
      @required Map<String, List<String>> aliases,
      @required Map<String, List<Claim>> claims,
      DateTime modified,
      String lastRevId})
      : super(qid, modified, lastRevId, labels, descriptions, aliases, claims);

  factory Property.fromParsedJson(Map<String, dynamic> json) => Property(
        qid: json["id"],
        labels: _multiLanguageStringsFromJson(json["labels"]),
        descriptions: _multiLanguageStringsFromJson(json["descriptions"]),
        aliases: _aliasesFromJson(json["aliases"]),
        claims: _claimsFromJson(json["claims"]),
      );

  @override
  Map<String, dynamic> toJsonStructure() => {
        "type": "property",
        "id": qid,
        "labels": _multiLanguageStringsToJson(labels),
        "descriptions": _multiLanguageStringsToJson(descriptions),
        "aliases": _aliasesToJson(aliases),
        "claims": _mapOfListsToJson(claims),
      };

  get type => EntityType.property;
}

class Claim implements _EntityEnumerable, _JsonSerializable {
  Claim({@required this.id, @required this.rank, @required this.mainSnak, @required this.qualifiers, @required this.references});

  factory Claim.fromParsedJson(Map<String, dynamic> json) => Claim(
        id: json["id"],
        rank: _rankFromJson(json["rank"]),
        mainSnak: Snak.fromParsedJson(json[r"mainsnak"]),
        qualifiers: _snaksTableFromJson(json["qualifiers"], json["qualifiers-order"]),
        references: _referencesFromJson(json["references"]),
      );

  String id;

  ClaimRank rank;
  Snak mainSnak;
  LinkedHashMap<String, List<Snak>> qualifiers;
  List<Reference> references;

  @override
  String toString() => mainSnak.toString();

  @override
  Set<String> collectAllReferredEntities() =>
      mainSnak.collectAllReferredEntities().union(_collectAllPropertiesUsed(flatten(qualifiers.values))).union(_collectAllPropertiesUsed(references));

  @override
  Map<String, dynamic> toJsonStructure() => {
        "id": id,
        "rank": _rankToJson(rank),
        r"mainsnak": mainSnak?.toJsonStructure(),
        "qualifiers": _mapOfListsToJson(qualifiers),
        "qualifiers-order": qualifiers.keys.toList(),
        "references": _listToJson(references),
      };
}

class Reference implements _EntityEnumerable, _JsonSerializable {
  Reference({this.hash, this.snaks});

  factory Reference.fromParsedJson(Map<String, dynamic> json) =>
      Reference(hash: json["hash"], snaks: _snaksTableFromJson(json[r"snaks"], json[r"snaks-order"]));

  String hash;

  LinkedHashMap<String, List<Snak>> snaks;

  @override
  Set<String> collectAllReferredEntities() => _collectAllPropertiesUsed(flatten(snaks.values));

  @override
  Map<String, dynamic> toJsonStructure() => {
        "hash": hash,
        r"snaks": _mapOfListsToJson(snaks),
        r"snaks-order": snaks.keys.toList(),
      };
}

abstract class Snak implements _EntityEnumerable, _JsonSerializable {
  Snak({@required this.property, @required this.hash});

  factory Snak.fromParsedJson(Map<String, dynamic> json) {
    switch (json[r"snaktype"]) {
      case "value":
        return ValueSnak.fromParsedJson(json);
      case r"novalue":
        return NoValueSnak.fromParsedJson(json);
      case r"somevalue":
        return SomeValueSnak.fromParsedJson(json);
      default:
        throw FormatException("Invalid or unsupported snak type");
    }
  }

  String property;
  String hash;

  SnakType get type;

  @override
  Set<String> collectAllReferredEntities() => {property};
}

class ValueSnak extends Snak {
  ValueSnak({@required String property, @required String hash, @required this.dataType, @required this.value}) : super(property: property, hash: hash);

  factory ValueSnak.fromParsedJson(Map<String, dynamic> json) =>
      ValueSnak(property: json["property"], hash: json["hash"], dataType: json[r"datatype"], value: DataValue.fromParsedJson(json[r"datavalue"]));

  get type => SnakType.value;

  String dataType;
  DataValue value;

  @override
  Map<String, dynamic> toJsonStructure() => {
        r"snaktype": "value",
        "property": property,
        "hash": hash,
        r"datatype": dataType,
        r"datavalue": value.toJsonStructure(),
      };

  @override
  Set<String> collectAllReferredEntities() => {property, ...value.collectAllReferredEntities()};

  @override
  String toString() => value.toString();
}

class SomeValueSnak extends Snak {
  SomeValueSnak({@required String property, @required String hash}) : super(property: property, hash: hash);

  factory SomeValueSnak.fromParsedJson(Map<String, dynamic> json) => SomeValueSnak(property: json["property"], hash: json["hash"]);

  get type => SnakType.someValue;

  @override
  Map<String, dynamic> toJsonStructure() => {
        r"snaktype": "somevalue",
        "property": property,
        "hash": hash,
      };

  @override
  String toString() => "[somevalue]";
}

class NoValueSnak extends Snak {
  NoValueSnak({@required String property, @required String hash}) : super(property: property, hash: hash);

  factory NoValueSnak.fromParsedJson(Map<String, dynamic> json) => NoValueSnak(property: json["property"], hash: json["hash"]);

  get type => SnakType.noValue;

  @override
  Map<String, dynamic> toJsonStructure() => {
        r"snaktype": "novalue",
        "property": property,
        "hash": hash,
      };

  @override
  String toString() => "[novalue]";
}

class SiteLink implements _JsonSerializable {
  SiteLink({@required this.pageTitle, List<String> badges}) : this.badges = badges ?? [];

  factory SiteLink.fromParsedJson(Map<String, dynamic> json) => SiteLink(pageTitle: json["title"], badges: _stringListFromJson(json["badges"]));

  String pageTitle;
  List<String> badges;

  @override
  Map<String, dynamic> toJsonStructure() => {"title": pageTitle, "badges": badges};

  @override
  String toString() => pageTitle;
}

abstract class DataValue implements _JsonSerializable, _EntityEnumerable {
  ValueType get type;

  DataValue();

  factory DataValue.fromParsedJson(Map<String, dynamic> json) {
    switch (_valueTypeFromJson(json["type"])) {
      case ValueType.string:
        return StringValue.fromJson(json);
      case ValueType.entityId:
        return EntityIdValue.fromJson(json);
      case ValueType.monolingualText:
        return MonolingualText.fromJson(json);
      case ValueType.quantity:
        return QuantityValue.fromJson(json);
      case ValueType.time:
        return TimeValue.fromJson(json);
      case ValueType.coordinate:
        return CoordinateValue.fromJson(json);
      default:
        throw UnimplementedError();
    }
  }

  @override
  Set<String> collectAllReferredEntities() => {};
}

class StringValue extends DataValue {
  StringValue(this.value);

  factory StringValue.fromJson(Map<String, dynamic> json) => StringValue(json["value"]);

  get type => ValueType.string;

  String value;

  @override
  Map<String, dynamic> toJsonStructure() => {
        "type": "string",
        "value": value,
      };

  @override
  String toString() => '"$value"';
}

class EntityIdValue extends DataValue {
  EntityIdValue(this.qid);

  factory EntityIdValue.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> value = json["value"];
    return EntityIdValue(value["id"]);
  }

  get type => ValueType.entityId;

  String qid;

  @override
  Map<String, dynamic> toJsonStructure() => {
        "type": r"wikibase-entityid",
        "value": {
          "id": qid,
        }
      };

  @override
  String toString() => qid;

  @override
  Set<String> collectAllReferredEntities() => {qid};
}

class MonolingualText extends DataValue {
  MonolingualText({@required this.text, @required this.language});

  factory MonolingualText.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> value = json["value"];
    return MonolingualText(text: value["text"], language: value["language"]);
  }

  get type => ValueType.monolingualText;

  String text;
  String language;

  @override
  Map<String, dynamic> toJsonStructure() => {
        "type": r"monolingualtext",
        "value": {
          "text": text,
          "language": language,
        }
      };

  @override
  String toString() => '"$text"@$language';
}

class TimeValue extends DataValue {
  TimeValue({@required this.time, @required this.precision, @required this.calendarModel});

  factory TimeValue.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> value = json["value"];
    return TimeValue(time: DateTime.parse(value["time"]), precision: value["precision"], calendarModel: value[r"calendarmodel"]);
  }

  get type => ValueType.time;

  DateTime time;
  num precision;
  String calendarModel;

  @override
  Map<String, dynamic> toJsonStructure() => {
        "type": "time",
        "value": {
          "time": time.toIso8601String(),
          "precision": precision,
          r"calendarmodel": calendarModel,
        }
      };

  @override
  Set<String> collectAllReferredEntities() => _urlToQidSet(calendarModel);

  @override
  String toString() => "${time.toIso8601String()}/$precision";
}

class QuantityValue extends DataValue {
  QuantityValue({@required this.amount, @required this.upperBound, @required this.lowerBound, @required this.unit});

  factory QuantityValue.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> value = json["value"];
    return QuantityValue(amount: value["amount"], upperBound: value["upperBound"], lowerBound: value["lowerBound"], unit: value["unit"]);
  }

  get type => ValueType.quantity;

  String amount;
  String upperBound;
  String lowerBound;
  String unit;

  @override
  Map<String, dynamic> toJsonStructure() => {
        "type": "quantity",
        "value": {
          "amount": amount,
          "upperBound": upperBound,
          "lowerBound": lowerBound,
          "unit": unit,
        }
      };

  @override
  Set<String> collectAllReferredEntities() => _urlToQidSet(unit);

  @override
  String toString() => lowerBound == null ? "$amount $unit" : "$amount <$lowerBound; $upperBound> $unit";
}

class CoordinateValue extends DataValue {
  CoordinateValue({@required this.latitude, @required this.longitude, @required this.precision, @required this.globe});

  factory CoordinateValue.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> value = json["value"];
    return CoordinateValue(
        latitude: value["latitude"].toString(), longitude: value["longitude"].toString(), precision: value["precision"], globe: value["globe"]);
  }

  get type => ValueType.coordinate;

  String latitude;
  String longitude;
  num precision;
  String globe;

  @override
  Map<String, dynamic> toJsonStructure() => {
        "type": r"globecoordinate",
        "value": {
          "latitude": latitude,
          "longitude": longitude,
          "precision": precision,
          "globe": globe,
        }
      };

  @override
  Set<String> collectAllReferredEntities() => _urlToQidSet(globe);

  @override
  String toString() => "$latitude, $longitude /$precision";
}

Map<String, String> _multiLanguageStringsFromJson(Map<String, dynamic> json) => json?.map((key, value) => MapEntry<String, String>(key, value["value"]));

Map<String, dynamic> _multiLanguageStringsToJson(Map<String, String> data) =>
    data?.map((key, value) => MapEntry<String, dynamic>(key, {"language": key, "value": value}));

Map<String, List<String>> _aliasesFromJson(Map<String, dynamic> aliasesJson) => aliasesJson
    ?.map((language, aliasList) => MapEntry<String, List<String>>(language, (aliasList as List<dynamic>).map((alias) => alias["value"] as String).toList()));

Map<String, dynamic> _aliasesToJson(Map<String, List<String>> aliases) =>
    aliases?.map((language, aliasList) => MapEntry<String, dynamic>(language, aliasList.map((alias) => {"language": language, "value": alias}).toList()));

Map<String, List<Claim>> _claimsFromJson(Map<String, dynamic> claimsJson) => claimsJson
    ?.map((property, claims) => MapEntry<String, List<Claim>>(property, (claims as List<dynamic>).map((json) => Claim.fromParsedJson(json)).toList()));

Map<String, SiteLink> _siteLinksFromJson(Map<String, dynamic> siteLinksJson) =>
    siteLinksJson?.map((site, link) => MapEntry<String, SiteLink>(site, SiteLink.fromParsedJson(link)));

List<Map<String, dynamic>> _listToJson<T extends _JsonSerializable>(List<T> list) => list?.map((value) => value.toJsonStructure())?.toList();

Map<String, dynamic> _mapToJson<T extends _JsonSerializable>(Map<String, T> map) =>
    map?.map((key, value) => MapEntry<String, dynamic>(key, value.toJsonStructure()));

Map<String, dynamic> _mapOfListsToJson<T extends _JsonSerializable>(Map<String, List<T>> map) =>
    map?.map((key, value) => MapEntry<String, dynamic>(key, value.map((item) => item.toJsonStructure()).toList()));

ClaimRank _rankFromJson(String rank) {
  switch (rank) {
    case "normal":
      return ClaimRank.normal;
    case "deprecated":
      return ClaimRank.deprecated;
    case "preferred":
      return ClaimRank.preferred;
    default:
      throw FormatException("Invalid or unsupported rank");
  }
}

String _rankToJson(ClaimRank rank) {
  switch (rank) {
    case ClaimRank.normal:
      return "normal";
    case ClaimRank.deprecated:
      return "deprecated";
    case ClaimRank.preferred:
      return "preferred";
    default:
      throw FormatException("Invalid or unsupported rank");
  }
}

ValueType _valueTypeFromJson(String type) {
  switch (type) {
    case r"string":
      return ValueType.string;
    case r"wikibase-entityid":
      return ValueType.entityId;
    case r"globecoordinate":
      return ValueType.coordinate;
    case r"quantity":
      return ValueType.quantity;
    case r"time":
      return ValueType.time;
    case r"monolingualtext":
      return ValueType.monolingualText;
    default:
      throw new FormatException("Invalid or unsupported value type");
  }
}

LinkedHashMap<String, List<Snak>> _snaksTableFromJson(Map<String, dynamic> snaksJson, List<dynamic> snaksOrder) => snaksJson == null || snaksOrder == null
    ? LinkedHashMap()
    : LinkedHashMap.fromEntries(snaksOrder.map((property) => MapEntry(property, _snakListFromJson(snaksJson[property]))));

List<Snak> _snakListFromJson(List<dynamic> json) => json.map((snak) => Snak.fromParsedJson(snak)).toList();

List<Reference> _referencesFromJson(List<dynamic> json) => json == null ? [] : json.map((reference) => Reference.fromParsedJson(reference)).toList();

List<String> _stringListFromJson(List<dynamic> json) => json.cast<String>().toList();

Set<String> _collectAllPropertiesUsed(Iterable<_EntityEnumerable> collection) =>
    collection.fold(Set<String>(), (currSet, item) => currSet.union(item.collectAllReferredEntities()));

Set<String> _urlToQidSet(String url) {
  final String qid = urlToQid(url);
  return qid == null ? {} : {qid};
}
