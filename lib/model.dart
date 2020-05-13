import 'dart:collection';
import 'package:meta/meta.dart';

enum EntityType { item, property }
enum ClaimRank { deprecated, normal, preferred }
enum SnakType { value, someValue, noValue }
enum ValueType { string, entityId, coordinate, quantity, time, monolingualText }

abstract class Entity {
  Entity(this.qid, this.modified, this.lastRevId, this.labels, this.descriptions, this.aliases, this.claims);

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

  get type => EntityType.property;
}

class Claim {
  Claim({@required this.id, @required this.rank, @required this.mainSnak, @required this.qualifiers, @required this.references});

  String id;

  ClaimRank rank;
  Snak mainSnak;
  LinkedHashMap<String, List<Snak>> qualifiers;
  List<Reference> references;

  @override
  String toString() => mainSnak.toString();
}

class Reference {
  String hash;

  LinkedHashMap<String, List<Snak>> snaks;
}

abstract class Snak {
  String hash;

  SnakType get type;
}

class ValueSnak extends Snak {
  ValueSnak({@required this.dataType, @required this.value});

  get type => SnakType.value;

  String dataType;
  DataValue value;

  @override
  String toString() => value.toString();
}

class SomeValueSnak extends Snak {
  get type => SnakType.someValue;

  @override
  String toString() => "[somevalue]";
}

class NoValueSnak extends Snak {
  get type => SnakType.noValue;

  @override
  String toString() => "[novalue]";
}

class SiteLink {
  SiteLink({@required this.pageTitle, List<String> badges})
      : this.badges = badges ?? [];

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
