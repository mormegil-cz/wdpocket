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

  static Map<String, String> _multiLanguageStringsFromJson(Map<String, dynamic> json) =>
      json.map((key, value) => MapEntry<String, String>(key, value["value"]));

  static Map<String, List<String>> _aliasesFromJson(Map<String, dynamic> aliasesJson) =>
      aliasesJson.map((language, aliasList) => MapEntry<String, List<String>>(language, (aliasList as List<dynamic>).map((alias) => alias["value"])));

  static Map<String, List<Claim>> _claimsFromJson(Map<String, dynamic> claimsJson) =>
      claimsJson.map((property, claims) => MapEntry<String, List<Claim>>(property, (claims as List<dynamic>).map((json) => Claim.fromParsedJson(json))));
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
    assert(json is Map);
    var jsonMap = json as Map<String, dynamic>;
    var aliasesJson = jsonMap["aliases"] as Map<String, dynamic>;

    return Item(
        qid: json["id"],
        labels: Entity._multiLanguageStringsFromJson(jsonMap["labels"]),
        descriptions: Entity._multiLanguageStringsFromJson(jsonMap["descriptions"]),
        aliases: Entity._aliasesFromJson(aliasesJson),
        claims: Entity._claimsFromJson(jsonMap["claims"]));
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
    assert(json is Map);

    throw UnimplementedError();
  }

  get type => EntityType.property;
}

class Claim {
  Claim({@required this.id, @required this.rank, @required this.mainSnak, @required this.qualifiers, @required this.references});

  factory Claim.fromParsedJson(Map<String, dynamic> json) => Claim(
      id: json["id"],
      rank: _rankFromJson(json["rank"]),
      mainSnak: Snak.fromParsedJson(json["mainSnak"]),
      qualifiers: _qualifiersFromJson(json["qualifiers"]),
      references: _referencesFromJson(json["references"])
    );

  String id;

  ClaimRank rank;
  Snak mainSnak;
  LinkedHashMap<String, List<Snak>> qualifiers;
  List<Reference> references;

  @override
  String toString() => mainSnak.toString();

  static ClaimRank _rankFromJson(String rank) {
    switch(rank) {
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

  static LinkedHashMap<String, List<Snak>> _qualifiersFromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }

  static List<Reference> _referencesFromJson(List<dynamic> json) {
    throw UnimplementedError();
  }
}

class Reference {
  String hash;

  LinkedHashMap<String, List<Snak>> snaks;
}

abstract class Snak {
  Snak({this.hash});

  factory Snak.fromParsedJson(Map<String, dynamic> json) {
  }

  String hash;

  SnakType get type;
}

class ValueSnak extends Snak {
  ValueSnak({@required String hash, @required this.dataType, @required this.value}) : super(hash: hash);

  get type => SnakType.value;

  String dataType;
  DataValue value;

  @override
  String toString() => value.toString();
}

class SomeValueSnak extends Snak {
  SomeValueSnak({@required String hash}) : super(hash: hash);

  get type => SnakType.someValue;

  @override
  String toString() => "[somevalue]";
}

class NoValueSnak extends Snak {
  NoValueSnak({@required String hash}) : super(hash: hash);

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
}

class StringValue extends DataValue {
  StringValue(this.value);

  get type => ValueType.string;

  String value;

  @override
  String toString() => '"$value"';
}

class EntityIdValue extends DataValue {
  EntityIdValue(this.qid);

  get type => ValueType.entityId;

  String qid;

  @override
  String toString() => qid;
}

class MonolingualText extends DataValue {
  MonolingualText({@required this.text, @required this.language});

  get type => ValueType.monolingualText;

  String text;
  String language;

  @override
  String toString() => '"$text"@$language';
}
