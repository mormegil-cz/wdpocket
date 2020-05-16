import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';

import 'util.dart';
import 'model.dart';

abstract class EntitySource {
  Future<Entity> getEntity(String qid, bool forceReload);
}

class WikibaseApi implements EntitySource {
  // TODO: Fix for public release
  static const String responsiveUser = "petr.kadlec@gmail.com";
  static final userAgentString =
      "WD Pocket/0.1 (${Platform.operatingSystem}/${Platform.operatingSystemVersion}) Dart/${Platform.version} (run by <$responsiveUser>)";

  final Map<String, String> _propertyLabels = {};
  final List<String> languages;

  WikibaseApi({@required this.languages});

  Future<String> _apiGet(String uri) async {
    final request = await HttpClient().getUrl(Uri.parse(uri));
    request.headers.add("User-Agent", userAgentString);
    request.headers.add("From", responsiveUser);
    final response = await request.close();

    return await utf8.decoder.bind(response).join();
  }

  String _getLocalizedLabel(String id, Map<String, String> labels) {
    for(final language in languages) {
      final localized = labels[language];
      if (localized != null && localized.isNotEmpty) {
        return localized;
      }
    }
    return id;
  }

  Future<Map<String, Entity>> _getEntities(Iterable<String> qids, [String params = ""]) async {
    final json = await _apiGet("https://www.wikidata.org/w/api.php?action=wbgetentities&format=json&ids=${qids.join("%7C")}$params");
    final decodedJson = jsonDecode(json);

    final Map<String, dynamic> entityMap = decodedJson["entities"] ?? {};

    return entityMap.map((qid, entityJson) => MapEntry(qid, Entity.fromParsedJson(entityJson)));
  }

  Future loadPropertyDefinitions(Iterable<String> ids) async {
    if (ids.isEmpty) return;

    for (final List<String> idBatch in split(ids, 50)) {
      var propertyLabels = await _getEntities(idBatch, "&props=labels&languages=${languages.join("%7C")}");

      for (Property property in propertyLabels.values) {
        _propertyLabels[property.qid] = _getLocalizedLabel(property.qid, property.labels);
      }
    }
  }

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

    final Set<String> propertiesToLoad = entity.collectAllPropertiesUsed();

    if (!forceReload) {
      propertiesToLoad.removeWhere(_propertyLabels.containsKey);
    }

    await loadPropertyDefinitions(propertiesToLoad);

    return entity;
  }

  String getPropertyLabel(String id) => _propertyLabels[id] ?? id;
}
