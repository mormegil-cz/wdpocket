import 'package:flutter/material.dart';
import 'package:pocket_data/api.dart';

import 'model.dart';
// import 'adams.dart';

final entitySource = WikibaseApi();

void main() async {
  runApp(WdPocketApp());
}

class WdPocketApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: "WD Pocket",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WdPocketAppHome());
}

class WdPocketAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WdPocketAppHomeState();
}

class WdPocketAppHomeState extends State<WdPocketAppHome> {
  String _qid;
  Future<Entity> _entity;

  @override
  void initState() {
    super.initState();
    print("initState()");
    requestLoadEntity("Q42");
  }

  void requestLoadEntity(String qid) {
    setState(() {
      print("Requesting load of $qid");
      _qid = qid;
      _entity = entitySource.getEntity(qid);
    });
  }

  void _showQidDialog() async {
    await showDialog(context: context, builder: _createTextInputDialogBuilder("Load entity", "Q123456", requestLoadEntity));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_qid ?? "WD Pocket"),
          actions: <Widget>[IconButton(icon: Icon(Icons.search), onPressed: _showQidDialog)],
        ),
        body: FutureBuilder<Entity>(
            future: _entity,
            builder: (context, snapshot) =>
                snapshot.hasData ? EntityView(entity: snapshot.data) : Center(child: Icon(snapshot.hasError ? Icons.error : Icons.home, size: 100))));
  }
}

class EntityView extends StatelessWidget {
  EntityView({@required this.entity, Key key}) : super(key: key);

  final Entity entity;

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: entity.type == EntityType.item ? 4 : 3,
      child: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.label_outline)),
                  Tab(icon: Icon(Icons.library_books)),
                  if (entity.type == EntityType.item) Tab(icon: Icon(Icons.perm_identity)),
                  if (entity.type == EntityType.property) Tab(icon: Icon(Icons.flag)),
                  if (entity.type == EntityType.item) Tab(icon: Icon(Icons.link)),
                ],
              )),
          Expanded(
            child: TabBarView(
              children: [
                EntityLabellingView(entity: entity),
                EntityClaimView(orderedClaims: _getClaims((dataType) => dataType != "external-id")),
                if (entity.type == EntityType.item) EntityClaimView(orderedClaims: _getClaims((dataType) => dataType == "external-id")),
                if (entity.type == EntityType.property) EntityClaimView(orderedClaims: _getClaims((dataType) => dataType == "!!TODO: property constraints")),
                if (entity.type == EntityType.item) EntitySiteLinksView(orderedLinks: (entity as Item).siteLinks.entries.toList())
              ],
            ),
          )
        ],
      ));

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

WidgetBuilder _createTextInputDialogBuilder(String caption, String hintText, void onDataEntered(String data)) {
  return (BuildContext context) {
    final TextEditingController controller = TextEditingController();

    void onDone() {
      Navigator.of(context).pop();
      onDataEntered(controller.text);
    }

    return AlertDialog(
      title: Text(caption),
      content: TextField(controller: controller, decoration: InputDecoration(hintText: hintText), autofocus: true, onSubmitted: (text) => onDone()),
      actions: <Widget>[
        new FlatButton(onPressed: onDone, child: Text("OK")),
        new FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Cancel"))
      ],
    );
  };
}
