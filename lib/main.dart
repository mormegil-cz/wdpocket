import 'package:flutter/material.dart';
import 'package:pocket_data/models/entity_with_labels.dart';
import 'package:pocket_data/util.dart';
import 'package:url_launcher/url_launcher.dart';

import 'datasources/api.dart';
import 'datasources/cached_api.dart';
import 'models/model.dart';

// TODO: Language localization/configuration
final List<String> userPreferredLanguages = ["cs", "sk", "en"];
final EntitySource entitySource = CachedWikibaseApi(languages: userPreferredLanguages);

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
      initialRoute: WdPocketAppHome.routeName,
      onGenerateRoute: (settings) {
        final Object arguments = settings.arguments;
        switch (settings.name) {
          case WdPocketAppHome.routeName:
            return MaterialPageRoute(builder: (context) => WdPocketAppHome.build(context, arguments));
          case EntityViewScreen.routeName:
            return MaterialPageRoute(builder: (context) => EntityViewScreen.build(context, arguments));
          default:
            throw new UnsupportedError("Route ${settings.name} not supported");
        }
      });
}

class WdPocketAppHome extends StatelessWidget {
  static const routeName = '/';

  WdPocketAppHome();

  WdPocketAppHome.build(BuildContext context, Object arguments) : this();

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("WD Pocket"),
      ),
      body: Center(child: IconButton(icon: Icon(Icons.home), iconSize: 70, onPressed: () => _navigateToQid(context, "Q42"))));
}

Future<Object> _navigateToQid(BuildContext context, String qid) => Navigator.pushNamed(context, EntityViewScreen.routeName, arguments: qid);

mixin _QidNavigationOnState<T extends StatefulWidget> on State<T> {
  Future<Object> navigateToQid(String qid) => _navigateToQid(this.context, qid);
}

class EntityViewScreen extends StatefulWidget {
  static const routeName = '/item';

  const EntityViewScreen({Key key, this.qid}) : super(key: key);

  EntityViewScreen.build(BuildContext context, String arguments) : this(qid: arguments);

  final String qid;

  @override
  State<StatefulWidget> createState() => EntityViewScreenState(qid);

  Widget routeBuilder(BuildContext _) => EntityViewScreen(qid: qid);
}

class EntityViewScreenState extends State<EntityViewScreen> with _QidNavigationOnState<EntityViewScreen> {
  EntityViewScreenState(this.qid);

  final String qid;
  Future<EntityWithLabels> _data;

  @override
  void initState() {
    super.initState();
    print("Requesting load of $qid");
    _data = _loadEntityWithLabels(qid, false);
  }

  Future<EntityWithLabels> _loadEntityWithLabels(String qid, bool forceReload) async {
    final entity = await entitySource.getEntity(qid, forceReload);
    final labels = await entitySource.getEntityLabels(entity.collectAllReferredEntities());

    final labellingLanguages =
        Set<String>.from(entity.labels.keys).union(Set<String>.from(entity.descriptions.keys)).union(Set<String>.from(entity.aliases.keys)).toList();
    labellingLanguages.sort(comparerByPreferredList(userPreferredLanguages, (a, b) => a.compareTo(b)));

    return EntityWithLabels(entity, labels, labellingLanguages);
  }

  Future<void> _processSearch() async {
    print("Going to search");
    final String qid = await showSearch(context: context, delegate: EntitySearchDelegate());
    if (qid != null) {
      navigateToQid(qid);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: FutureBuilder<EntityWithLabels>(future: _data, builder: _futureTitleBuilder),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: _processSearch),
          IconButton(icon: Icon(Icons.open_in_browser), onPressed: () => launch(qidToUrl(qid)))
        ],
      ),
      body: FutureBuilder<EntityWithLabels>(future: _data, builder: _futureEntityViewBuilder));

  Widget _futureTitleBuilder(BuildContext context, AsyncSnapshot<EntityWithLabels> snapshot) =>
      snapshot.hasData ? Text("$qid: ${snapshot.data.labels[qid]}") : Text(qid);

  static Widget _futureEntityViewBuilder(BuildContext context, AsyncSnapshot<EntityWithLabels> snapshot) {
    if (snapshot.hasData) {
      return EntityView(key: ValueKey(snapshot.data.entity.qid), entity: snapshot.data);
    }
    if (snapshot.hasError) {
      return Center(child: Column(children: [Icon(Icons.error, size: 100), Text(snapshot.error.toString())]));
    }
    return Center(child: CircularProgressIndicator());
  }
}

class EntityView extends StatelessWidget {
  EntityView({@required this.entity, Key key}) : super(key: key);

  final EntityWithLabels entity;

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: entity.entity.type == EntityType.item ? 4 : 3,
      child: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.label_outline)),
                  Tab(icon: Icon(Icons.library_books)),
                  if (entity.entity.type == EntityType.item) Tab(icon: Icon(Icons.perm_identity)),
                  if (entity.entity.type == EntityType.property) Tab(icon: Icon(Icons.flag)),
                  if (entity.entity.type == EntityType.item) Tab(icon: Icon(Icons.link)),
                ],
              )),
          Expanded(
            child: TabBarView(
              children: [
                EntityLabellingView(entity: entity),
                EntityClaimView(orderedClaims: _getClaims((dataType) => dataType != "external-id"), labels: entity.labels),
                if (entity.entity.type == EntityType.item)
                  EntityClaimView(orderedClaims: _getClaims((dataType) => dataType == "external-id"), labels: entity.labels),
                if (entity.entity.type == EntityType.property)
                  EntityClaimView(orderedClaims: _getClaims((dataType) => dataType == "!!TODO: property constraints"), labels: entity.labels),
                if (entity.entity.type == EntityType.item) EntitySiteLinksView(orderedLinks: (entity.entity as Item).siteLinks.entries.toList())
              ],
            ),
          )
        ],
      ));

  List<MapEntry<String, List<Claim>>> _getClaims(bool dataTypeFilter(String dataType)) {
    // TODO: This filters on actual values, it should rather filter on property definitions, since properties with no value snaks appear everywhere right now
    return entity.entity.claims.entries
        .where((claim) => !claim.value
            .where((claimValue) => claimValue.mainSnak is ValueSnak)
            .every((claimValue) => !dataTypeFilter((claimValue.mainSnak as ValueSnak).dataType)))
        .toList();
  }
}

class EntityLabellingView extends StatelessWidget {
  EntityLabellingView({@required EntityWithLabels entity, Key key})
      : this.data = entity,
        super(key: key);

  final EntityWithLabels data;

  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: data.sortedLabellingLanguages.length,
      itemBuilder: (content, index) => Container(
          //decoration: BoxDecoration(border: Border(top: BorderSide())),
          padding: EdgeInsets.all(5),
          child: _buildLanguageWidget(context, data.sortedLabellingLanguages[index])));

  Widget _buildLanguageWidget(BuildContext context, String language) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ListTile(
        leading: CircleAvatar(child: Text(language)),
        title: Text(data.entity.labels[language] ?? "", style: textTheme.bodyText1),
        subtitle: Text(data.entity.descriptions[language] ?? "", style: textTheme.bodyText2),
      ),
      Wrap(children: (data.entity.aliases[language]?.map((alias) => Chip(label: Text(alias))) ?? []).toList()),
    ]));
  }
}

class EntityClaimView extends StatelessWidget {
  const EntityClaimView({@required this.orderedClaims, @required this.labels, Key key}) : super(key: key);

  final List<MapEntry<String, List<Claim>>> orderedClaims;
  final Map<String, String> labels;

  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: orderedClaims.length,
      itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(border: Border(top: BorderSide())),
          padding: EdgeInsets.all(5),
          child: _buildClaimWidget(context, orderedClaims[index].key, orderedClaims[index].value)));

  Widget _buildClaimWidget(BuildContext context, String propertyId, List<Claim> claims) {
    final textTheme = Theme.of(context).textTheme;
    final List<Widget> claimWidgets = claims.map((claim) => _buildClaimViewWidget(context, claim, textTheme)).toList(growable: false);

    return Column(children: <Widget>[
      Text(labels[propertyId], style: textTheme.headline5),
      Container(padding: EdgeInsets.only(left: 5), child: Column(children: claimWidgets))
    ]);
  }

  Widget _buildClaimViewWidget(BuildContext context, Claim claim, TextTheme textTheme) => Card(
          child: SizedBox(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: _buildSnakViewWidget(claim.mainSnak, textTheme),
            subtitle: InkWell(
                child: Text(labels[claim.mainSnak.property], style: textTheme.subtitle2), onTap: () => _navigateToQid(context, claim.mainSnak.property)),
          )
        ],
      )));

  Widget _buildSnakViewWidget(Snak snak, TextTheme textTheme) {
    switch (snak.type) {
      case SnakType.noValue:
        return Icon(Icons.not_interested);
      case SnakType.someValue:
        return Icon(Icons.device_unknown);
      case SnakType.value:
        final ValueSnak valueSnak = snak;
        return _buildDataValueViewWidget(valueSnak.value, textTheme);
      default:
        throw new UnsupportedError("Unsupported snak type");
    }
  }

  Widget _buildDataValueViewWidget(DataValue value, TextTheme textTheme) {
    switch (value.type) {
      case ValueType.string:
      case ValueType.coordinate:
      case ValueType.time:
        return Text(value.toString(), style: textTheme.headline5);
      case ValueType.entityId:
        return EntityIdView(value: value, labels: labels);
      case ValueType.monolingualText:
        return MonolingualTextView(value: value);
      case ValueType.quantity:
        return QuantityView(value: value, labels: labels);
      default:
        throw new UnsupportedError("Unsupported value type");
    }
  }
}

class EntityIdView extends StatelessWidget {
  const EntityIdView({Key key, @required this.value, @required this.labels}) : super(key: key);

  final EntityIdValue value;
  final Map<String, String> labels;

  @override
  Widget build(BuildContext context) => InkWell(child: Text(labels[value.qid]), onTap: () => _navigateToQid(context, value.qid));
}

class MonolingualTextView extends StatelessWidget {
  const MonolingualTextView({Key key, @required this.value}) : super(key: key);

  final MonolingualText value;

  @override
  Widget build(BuildContext context) => Row(children: <Widget>[
        Text(value.text),
        Padding(padding: EdgeInsets.only(left: 5), child: Chip(label: Text(value.language))),
      ]);
}

class QuantityView extends StatelessWidget {
  const QuantityView({Key key, @required this.value, @required this.labels}) : super(key: key);

  final QuantityValue value;
  final Map<String, String> labels;

  @override
  Widget build(BuildContext context) {
    var unitUrl = value.unit;
    final unitQid = urlToQid(unitUrl);
    final unit = unitQid == null ? (unitUrl == "1" ? null : unitUrl) : (labels[unitQid] ?? unitQid);
    return Row(children: <Widget>[
      Text(value.amount),
      if (unit != null)
        Padding(
            padding: EdgeInsets.only(left: 5),
            child: ActionChip(
              label: Text(unit),
              onPressed: () => _navigateToQid(context, unitQid),
            )),
    ]);
  }
}

class EntitySiteLinksView extends StatelessWidget {
  const EntitySiteLinksView({@required this.orderedLinks, Key key}) : super(key: key);

  final List<MapEntry<String, SiteLink>> orderedLinks;

  @override
  Widget build(BuildContext context) => ListView.builder(
      itemBuilder: (content, index) => ListTile(
          leading: Text(orderedLinks[index].key),
          title:
              InkWell(child: Text(orderedLinks[index].value.pageTitle), onTap: () => launch(_siteLinkUrl(orderedLinks[index].key, orderedLinks[index].value)))),
      itemCount: orderedLinks.length);

  static String _siteLinkUrl(String site, SiteLink link) => wikiSiteBaseUrl(site) + encodePageTitleToUrl(link.pageTitle);
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

class EntitySearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) => null;

  @override
  Widget buildLeading(BuildContext context) => null;

  @override
  Widget buildResults(BuildContext context) => _buildSearchResults();

  @override
  Widget buildSuggestions(BuildContext context) => _buildSearchResults();

  Widget _buildSearchResults() => FutureBuilder(
      future: _runSearch(query),
      builder: _buildAsyncBuilder(
          dataBuilder: (context, List<SearchResult> results) =>
              ListView.builder(itemCount: results.length, itemBuilder: (context, index) => _buildSearchResult(context, results[index])),
          errorBuilder: (context, error) => Center(
                  child: Column(children: [
                Icon(Icons.error),
                Text(error.toString()),
              ])),
          waitingBuilder: (context) => Center(child: CircularProgressIndicator())));

  Widget _buildSearchResult(BuildContext context, SearchResult result) =>
      ListTile(title: Text(result.title), subtitle: Text(result.description), onTap: () => close(context, result.qid));

  static Future<List<SearchResult>> _runSearch(String query) => query == null || query.isEmpty ? Future.value([]) : entitySource.search(query, 10);
}

AsyncWidgetBuilder<T> _buildAsyncBuilder<T>({
  @required Widget dataBuilder(BuildContext context, T snapshotData),
  @required Widget errorBuilder(BuildContext context, Object error),
  @required Widget waitingBuilder(BuildContext context),
}) {
  Widget asyncBuilder(BuildContext context, AsyncSnapshot<T> snapshot) {
    if (snapshot.hasData) return dataBuilder(context, snapshot.data);
    if (snapshot.hasError) return errorBuilder(context, snapshot.error);
    return waitingBuilder(context);
  }

  return asyncBuilder;
}
