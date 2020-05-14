import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:pocket_data/api.dart';

import 'model.dart';
import 'adams.dart';

void main() async {
  var adamsSample = Item(
      qid: "Q42",
      labels: {"en": "Douglas Adams"},
      descriptions: {"en": "English writer"},
      aliases: {},
      claims: {
        "P31": <Claim>[
          Claim(
              id: r"Q42$F078E5B3-F9A8-480E-B7AC-D97778CBBEF9",
              rank: ClaimRank.normal,
              mainSnak: ValueSnak(dataType: "wikibase-item", value: EntityIdValue("Q5"), hash: "ad7d38a03cdd40cdc373de0dc4e7b7fcbccb31d9"),
              qualifiers: LinkedHashMap.from({}),
              references: [])
        ]
      },
      siteLinks: {"enwiki": SiteLink(pageTitle: "Douglas Adams")},
      lastRevId: "0",
      modified: DateTime(2020, 05, 13, 10, 22, 31));

  //var adams = Entity.fromParsedJson(q42ParsedJson);

  var entitySource = WikibaseApi();
  var entity = await entitySource.getEntity("Q256");

  runApp(MyApp(entity: entity));
}

class MyApp extends StatelessWidget {
  MyApp({@required this.entity});

  final String title = "WD Pocket";
  final Entity entity;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: this.title,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(this.title),
            actions: <Widget>[Icon(Icons.search)],
          ),
          body: EntityView(entity: this.entity),
        ));
  }
}

class EntityView extends StatelessWidget {
  EntityView({@required this.entity, Key key}) : super(key: key);

  final Entity entity;

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: entity.type == EntityType.item ? 4 : 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.label_outline)),
                Tab(icon: Icon(Icons.library_books)),
                Tab(icon: Icon(Icons.perm_identity)),
                if (entity.type == EntityType.item) Tab(icon: Icon(Icons.link))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              EntityLabellingView(entity: entity),
              EntityClaimView(orderedClaims: _getClaims((dataType) => dataType != "external-id")),
              EntityClaimView(orderedClaims: _getClaims((dataType) => dataType == "external-id")),
              if (entity.type == EntityType.item) EntitySiteLinksView(orderedLinks: (entity as Item).siteLinks.entries.toList())
            ],
          ),
        ),
      );

  List<MapEntry<String, List<Claim>>> _getClaims(bool dataTypeFilter(String dataType)) {
    // TODO: This filters on actual values, it should rather filter on property definitions, since properties with no value snaks appear everywhere right now
    return entity.claims.entries
        .where((claim) => !claim.value
            .where((claimValue) => claimValue.mainSnak is ValueSnak)
            .every((claimValue) => !dataTypeFilter((claimValue.mainSnak as ValueSnak).dataType)))
        .toList();
  }
}

class EntityLabellingView extends StatelessWidget {
  EntityLabellingView({@required Entity entity, Key key})
      : this.entity = entity,
        this._labellingLanguages =
            Set<String>.from(entity.labels.keys).union(Set<String>.from(entity.descriptions.keys)).union(Set<String>.from(entity.aliases.keys)).toList(),
        super(key: key);

  final Entity entity;
  final List<String> _labellingLanguages;

  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: _labellingLanguages.length,
      itemBuilder: (content, index) => Container(
          decoration: BoxDecoration(border: Border(top: BorderSide())),
          padding: EdgeInsets.symmetric(vertical: 5),
          child: _buildLanguageWidget(context, _labellingLanguages[index])));

  Widget _buildLanguageWidget(BuildContext context, String language) => Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
        Text(language, style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.3, fontWeightDelta: 3)),
        Container(
            padding: EdgeInsets.only(left: 5),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              Text(entity.labels[language] ?? "", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(entity.descriptions[language] ?? "", style: TextStyle(fontStyle: FontStyle.italic)),
              Text(entity.aliases[language]?.join("|") ?? ""),
            ]))
      ]);
}

class EntityClaimView extends StatelessWidget {
  const EntityClaimView({@required this.orderedClaims, Key key}) : super(key: key);

  final List<MapEntry<String, List<Claim>>> orderedClaims;

  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: orderedClaims.length,
      itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(border: Border(top: BorderSide())),
          padding: EdgeInsets.symmetric(vertical: 5),
          child: _buildClaimWidget(context, orderedClaims[index].key, orderedClaims[index].value)));

  static Widget _buildClaimWidget(BuildContext context, String propertyId, List<Claim> claims) {
    final List<Widget> claimWidgets = claims.map((claim) => ListTile(key: ValueKey(claim.id), title: Text(claim.toString()))).toList(growable: false);

    return Column(children: <Widget>[
      Text(propertyId, style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.3, fontWeightDelta: 3)),
      Container(padding: EdgeInsets.only(left: 5), child: Column(children: claimWidgets))
    ]);
  }
}

class EntitySiteLinksView extends StatelessWidget {
  const EntitySiteLinksView({@required this.orderedLinks, Key key}) : super(key: key);

  final List<MapEntry<String, SiteLink>> orderedLinks;

  @override
  Widget build(BuildContext context) => ListView.builder(
      itemBuilder: (content, index) => ListTile(leading: Text(orderedLinks[index].key), title: Text(orderedLinks[index].value.pageTitle)),
      itemCount: orderedLinks.length);
}
