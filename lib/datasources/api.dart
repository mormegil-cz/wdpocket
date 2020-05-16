import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:package_info/package_info.dart';

import '../models/model.dart';
import '../util.dart';

abstract class EntitySource {
  Future<Entity> getEntity(String qid, bool forceReload);

  Future<Map<String, String>> getEntityLabels(Iterable<String> ids);

  Future<String> getPropertyLabel(String id) async => (await getEntityLabels([id]))[id];
}

class WikibaseApi extends EntitySource {
  // TODO: Fix for public release
  static const String _responsibleUser = "petr.kadlec@gmail.com";
  static Future<PackageInfo> _packageInfo = PackageInfo.fromPlatform();

  // TODO: Add Flutter/Dart version?
  static final String _platformInfoString = "(${Platform.operatingSystem}/${Platform.operatingSystemVersion}) (run by <$_responsibleUser>)";

  final Map<String, String> _propertyLabels = {};
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

    print(await _getUserAgentString());

    return await utf8.decoder.bind(response).join();
  }

  Future<Map<String, Entity>> _getEntities(Iterable<String> qids, [String params = ""]) async {
    final json = await _apiGet("https://www.wikidata.org/w/api.php?action=wbgetentities&format=json&ids=${qids.join("%7C")}$params");
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
}
