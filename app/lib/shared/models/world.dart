class World {
  const World({
    required this.id,
    required this.name,
    required this.description,
    required this.lessonIds,
    required this.isUnlocked,
  });

  final String id;
  final String name;
  final String description;
  final List<String> lessonIds;
  final bool isUnlocked;
}
