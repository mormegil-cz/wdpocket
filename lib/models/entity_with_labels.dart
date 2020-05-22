import 'model.dart';

class EntityWithLabels {
  final Entity entity;
  final Map<String, String> labels;
  final List<String> sortedLabellingLanguages;

  const EntityWithLabels(this.entity, this.labels, this.sortedLabellingLanguages);
}
