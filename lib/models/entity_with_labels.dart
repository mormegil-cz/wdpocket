import 'model.dart';

class EntityWithLabels {
  final Entity entity;
  final Map<String, String> labels;
  final List<String> sortedLabellingLanguages;

  EntityWithLabels(this.entity, this.labels, this.sortedLabellingLanguages);
}
