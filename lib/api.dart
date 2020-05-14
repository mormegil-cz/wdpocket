import 'dart:convert';
import 'dart:io';

import 'model.dart';

abstract class EntitySource {
  Future<Entity> getEntity(String qid);
}

class WikibaseApi implements EntitySource {
  Future<Entity> getEntity(String qid) async {
    final request = await HttpClient().getUrl(Uri.parse("https://www.wikidata.org/w/api.php?action=wbgetentities&format=json&ids=$qid"));
    request.headers.add("User-Agent", "WD Pocket/0.1 (run by <petr.kadlec@gmail.com>)");
    request.headers.add("From", "petr.kadlec@gmail.com");
    final response = await request.close();
    final json = await utf8.decoder.bind(response).join();
    print("Retrieved entity JSON for $qid");
    final decodedJson = jsonDecode(json);
    return Entity.fromParsedJson(decodedJson["entities"][qid]);
  }
}
