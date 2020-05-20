import 'dart:convert';
import 'dart:io';

import 'package:html_unescape/html_unescape.dart';
import 'package:meta/meta.dart';
import 'package:package_info/package_info.dart';

import '../models/model.dart';
import '../models/search_result.dart';
import '../util.dart';

const String wikidataUrlPrefix = "http://www.wikidata.org/entity/";

String urlToQid(String url) => url.startsWith(wikidataUrlPrefix) ? url.substring(wikidataUrlPrefix.length) : null;

String qidToUrl(String qid) => wikidataUrlPrefix + qid;

final Map<String, String> wikiSiteSuffixes = {
  "wiktionary": "https://@.wikiquote.org",
  "wikiquote": "https://@.wikiquote.org",
  "wikisource": "https://@.wikiquote.org",
  "wikibooks": "https://@.wikiquote.org",
  "wikinews": "https://@.wikiquote.org",
  "wikiversity": "https://@.wikiquote.org",
  "wikivoyage": "https://@.wikiquote.org",
};
final Map<String, String> wikiSites = {
  "commonswiki": "https://commons.wikimedia.org",
  "mediawikiwiki": "https://www.mediawiki.org",
  "metawiki": "https://meta.wikimedia.org",
  "wikidatawiki": "https://www.wikidata.org",
};

String wikiSiteBaseUrl(String siteId) {
  final String directWikiSite = wikiSites[siteId];
  if (directWikiSite != null) return "$directWikiSite/wiki/";
  for (final MapEntry<String, String> wikiSite in wikiSiteSuffixes.entries) {
    if (siteId.endsWith(wikiSite.key)) return wikiSite.value.replaceFirst("@", siteId.substring(0, siteId.length - wikiSite.key.length)) + "/wiki/";
  }
  return siteId;
}

String encodePageTitleToUrl(String pageTitle) => Uri.encodeComponent(pageTitle.replaceAll(" ", "_"));

abstract class EntitySource {
  Future<Entity> getEntity(String qid, bool forceReload);

  Future<Map<String, String>> getEntityLabels(Iterable<String> ids);

  Future<String> getPropertyLabel(String id) async => (await getEntityLabels([id]))[id];

  Future<List<SearchResult>> search(String query, int searchLimit);
}

class WikibaseApi extends EntitySource {
  static const String _wikibaseServer = "https://www.wikidata.org";
  static const String _wikibaseApi = "$_wikibaseServer/w/api.php";

  // TODO: Fix for public release
  static const String _responsibleUser = "petr.kadlec@gmail.com";
  static Future<PackageInfo> _packageInfo = PackageInfo.fromPlatform();

  // TODO: Add Flutter/Dart version?
  static final String _platformInfoString = "(${Platform.operatingSystem}/${Platform.operatingSystemVersion}) (run by <$_responsibleUser>)";

  final List<String> languages;

  WikibaseApi({@required this.languages});

  Future<String> _getUserAgentString() async {
    final info = await _packageInfo;
    return "${info.appName}/${info.version} $_platformInfoString";
  }

  Future<String> _apiGet(String uri) async {
    final request = await HttpClient().getUrl(Uri.parse(uri));
    request.headers.add("User-Agent", await _getUserAgentString());
    request.headers.add("From", _responsibleUser);
    final response = await request.close();

    return await utf8.decoder.bind(response).join();
  }

  Future<Map<String, Entity>> _getEntities(Iterable<String> qids, [String params = ""]) async {
    final json = await _apiGet("$_wikibaseApi?action=wbgetentities&format=json&ids=${qids.join("%7C")}$params");
    final decodedJson = jsonDecode(json);

    final Map<String, dynamic> entityMap = decodedJson["entities"] ?? {};

    return entityMap.map((qid, entityJson) => MapEntry(qid, Entity.fromParsedJson(entityJson)));
  }

  @override
  Future<Map<String, String>> getEntityLabels(Iterable<String> ids) async {
    if (ids.isEmpty) return {};

    final Map<String, String> result = {};
    for (final List<String> idBatch in split(ids, 50)) {
      final entityLabels = await _getEntities(idBatch, "&props=labels&languages=${languages.join("%7C")}");

      for (final entity in entityLabels.values) {
        result[entity.qid] = getLocalizedLabel(entity.labels, languages) ?? entity.qid;
      }
    }
    return result;
  }

  @override
  Future<Entity> getEntity(String qid, bool forceReload) async {
    Map<String, Entity> entities;
    try {
      entities = await _getEntities([qid]);
    } catch (e) {
      print("Error retrieving entity $qid: $e");
      rethrow;
    }

    final entity = entities[qid];
    if (entity == null) {
      print("Entity $qid not found");
      throw HttpException("Entity $qid not found");
    }

    return entity;
  }

  static List<String> splitTitleSnippet(String snippet) {
    const String startSpan = r'<span class="searchmatch">';
    const String endSpan = r'</span>';
    final int startIndex = snippet.indexOf(startSpan);
    if (startIndex < 0) {
      return [snippet];
    }

    final int startMain = startIndex + startSpan.length;
    final int endIndex = snippet.indexOf(endSpan, startMain);
    if (endIndex < 0) {
      return [snippet.substring(0, startIndex), snippet.substring(startMain)];
    } else {
      return [snippet.substring(0, startIndex), snippet.substring(startMain, endIndex), snippet.substring(endIndex + endSpan.length)];
    }
  }

  @override
  Future<List<SearchResult>> search(String query, int searchLimit) async {
    final htmlUnescaper = HtmlUnescape();
    SearchResult convertSearchResult(Map<String, dynamic> result) =>
        SearchResult(result["title"], splitTitleSnippet(result["titlesnippet"]).map(htmlUnescaper.convert).toList(), result["snippet"]);

    final encodedQuery = Uri.encodeQueryComponent(query);
    print("Searching for '$query'");
    final json = await _apiGet("$_wikibaseApi?action=query&format=json&list=search&srsearch=$encodedQuery&srlimit=$searchLimit&srprop=snippet%7Ctitlesnippet&uselang=${languages.first}");
    final Map<String, dynamic> decodedJson = jsonDecode(json);
    final Map<String, dynamic> queryResult = decodedJson["query"];
    final List<dynamic> searchResults = queryResult["search"];
    return searchResults.cast<Map<String, dynamic>>().map(convertSearchResult).toList();
  }
}
