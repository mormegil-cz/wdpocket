import 'dart:collection';
import 'package:meta/meta.dart';

enum EntityType { item, property }
enum ClaimRank { deprecated, normal, preferred }
enum SnakType { value, someValue, noValue }
enum ValueType { string, entityId, coordinate, quantity, time, monolingualText }

abstract class Entity {
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

  factory Item.fromParsedJson(Map<String, dynamic> json) {
    return Item(
      qid: json["id"],
      labels: _multiLanguageStringsFromJson(json["labels"]),
      descriptions: _multiLanguageStringsFromJson(json["descriptions"]),
      aliases: _aliasesFromJson(json["aliases"]),
      claims: _claimsFromJson(json["claims"]),
      siteLinks: _siteLinksFromJson(json["sitelinks"]),
    );
  }

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

  factory Property.fromParsedJson(Map<String, dynamic> json) {
    return Property(
      qid: json["id"],
      labels: _multiLanguageStringsFromJson(json["labels"]),
      descriptions: _multiLanguageStringsFromJson(json["descriptions"]),
      aliases: _aliasesFromJson(json["aliases"]),
      claims: _claimsFromJson(json["claims"]),
    );
  }

  get type => EntityType.property;
}

class Claim {
  Claim({@required this.id, @required this.rank, @required this.mainSnak, @required this.qualifiers, @required this.references});

  factory Claim.fromParsedJson(Map<String, dynamic> json) => Claim(
      id: json["id"],
      rank: _rankFromJson(json["rank"]),
      mainSnak: Snak.fromParsedJson(json["mainsnak"]),
      qualifiers: _snaksTableFromJson(json["qualifiers"], json["qualifiers-order"]),
      references: _referencesFromJson(json["references"]));

  String id;

  ClaimRank rank;
  Snak mainSnak;
  LinkedHashMap<String, List<Snak>> qualifiers;
  List<Reference> references;

  @override
  String toString() => mainSnak.toString();
}

class Reference {
  Reference({this.hash, this.snaks});

  factory Reference.fromParsedJson(Map<String, dynamic> json) => Reference(hash: json["hash"], snaks: _snaksTableFromJson(json["snaks"], json["snaks-order"]));

  String hash;

  LinkedHashMap<String, List<Snak>> snaks;
}

abstract class Snak {
  Snak({this.hash});

  factory Snak.fromParsedJson(Map<String, dynamic> json) {
    switch (json["snaktype"]) {
      case "value":
        return ValueSnak.fromParsedJson(json);
      case "novalue":
        return NoValueSnak.fromParsedJson(json);
      case "somevalue":
        return SomeValueSnak.fromParsedJson(json);
      default:
        throw FormatException("Invalid or unsupported snak type");
    }
  }

  String hash;

  SnakType get type;
}

class ValueSnak extends Snak {
  ValueSnak({@required String hash, @required this.dataType, @required this.value}) : super(hash: hash);

  factory ValueSnak.fromParsedJson(Map<String, dynamic> json) {
    return ValueSnak(hash: json["hash"], dataType: json["datatype"], value: DataValue.fromParsedJson(json["datavalue"]));
  }

  get type => SnakType.value;

  String dataType;
  DataValue value;

  @override
  String toString() => value.toString();
}

class SomeValueSnak extends Snak {
  SomeValueSnak({@required String hash}) : super(hash: hash);

  factory SomeValueSnak.fromParsedJson(Map<String, dynamic> json) => SomeValueSnak(hash: json["hash"]);

  get type => SnakType.someValue;

  @override
  String toString() => "[somevalue]";
}

class NoValueSnak extends Snak {
  NoValueSnak({@required String hash}) : super(hash: hash);

  factory NoValueSnak.fromParsedJson(Map<String, dynamic> json) => NoValueSnak(hash: json["hash"]);

  get type => SnakType.noValue;

  @override
  String toString() => "[novalue]";
}

class SiteLink {
  SiteLink({@required this.pageTitle, List<String> badges}) : this.badges = badges ?? [];

  String pageTitle;
  List<String> badges;

  @override
  String toString() => pageTitle;
}

abstract class DataValue {
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
}

class StringValue extends DataValue {
  StringValue(this.value);

  factory StringValue.fromJson(Map<String, dynamic> json) {
    return StringValue(json["value"]);
  }

  get type => ValueType.string;

  String value;

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
  String toString() => qid;
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
  String toString() => '"$text"@$language';
}

class TimeValue extends DataValue {
  TimeValue({@required this.time, @required this.precision, @required this.calendarModel});

  factory TimeValue.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> value = json["value"];
    return TimeValue(time: DateTime.parse(value["time"]), precision: value["precision"], calendarModel: value["calendarmodel"]);
  }

  get type => ValueType.time;

  DateTime time;
  num precision;
  String calendarModel;

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
  String toString() => lowerBound == null ? "$amount $unit" : "$amount <$lowerBound; $upperBound> $unit";
}

class CoordinateValue extends DataValue {
  CoordinateValue({@required this.latitude, @required this.longitude, @required this.precision, @required this.globe});

  factory CoordinateValue.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> value = json["value"];
    return CoordinateValue(latitude: value["latitude"].toString(), longitude: value["longitude"].toString(), precision: value["precision"], globe: value["globe"]);
  }

  get type => ValueType.coordinate;

  String latitude;
  String longitude;
  num precision;
  String globe;

  @override
  String toString() => "$latitude, $longitude /$precision";
}

Map<String, String> _multiLanguageStringsFromJson(Map<String, dynamic> json) => json.map((key, value) => MapEntry<String, String>(key, value["value"]));

Map<String, List<String>> _aliasesFromJson(Map<String, dynamic> aliasesJson) => aliasesJson
    .map((language, aliasList) => MapEntry<String, List<String>>(language, (aliasList as List<dynamic>).map((alias) => alias["value"] as String).toList()));

Map<String, List<Claim>> _claimsFromJson(Map<String, dynamic> claimsJson) =>
    claimsJson.map((property, claims) => MapEntry<String, List<Claim>>(property, (claims as List<dynamic>).map((json) => Claim.fromParsedJson(json)).toList()));

Map<String, SiteLink> _siteLinksFromJson(Map<String, dynamic> siteLinksJson) =>
    siteLinksJson.map((site, link) => MapEntry<String, SiteLink>(site, SiteLink(pageTitle: link["title"], badges: _stringListFromJson(link["badges"]))));

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

ValueType _valueTypeFromJson(String type) {
  switch (type) {
    case "string":
      return ValueType.string;
    case "wikibase-entityid":
      return ValueType.entityId;
    case "globecoordinate":
      return ValueType.coordinate;
    case "quantity":
      return ValueType.quantity;
    case "time":
      return ValueType.time;
    case "monolingualtext":
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

List<String> _stringListFromJson(List<dynamic> json) => json.map((item) => (item as String)).toList();
