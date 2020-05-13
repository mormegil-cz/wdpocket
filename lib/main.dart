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

  runApp(MyApp(entity:entity));
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
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(this.title),
          ),
          body: EntityView(
              entity: this.entity),
        ));
  }
}

class EntityView extends StatelessWidget {
  EntityView({@required this.entity, Key key})
      : orderedClaims = entity.claims.entries.toList(),
        super(key: key);

  final Entity entity;
  final List<MapEntry<String, List<Claim>>> orderedClaims;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: entity.claims.length,
        itemBuilder: (context, index) =>
            Container(
                decoration: BoxDecoration(border: Border(top: BorderSide())),
                padding: EdgeInsets.symmetric(vertical: 5),
                child: _buildClaimWidget(context, orderedClaims[index].key, orderedClaims[index].value)));
  }

  Widget _buildClaimWidget(BuildContext context, String propertyId, List<Claim> claims) {
    final List<Widget> claimWidgets = claims.map((claim) => ListTile(key: ValueKey(claim.id), title: Text(claim.toString()))).toList(growable: false);

    return Column(children: <Widget>[
      Text(propertyId, style: TextStyle(fontWeight: FontWeight.bold)),
      Container(padding: EdgeInsets.only(left: 5), child: Column(children: claimWidgets))
    ]);
  }
}
