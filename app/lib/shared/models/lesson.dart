class Lesson {
  const Lesson({
    required this.id,
    required this.title,
    required this.worldId,
    required this.wordIds,
    required this.rewardId,
  });

  final String id;
  final String title;
  final String worldId;
  final List<String> wordIds;
  final String rewardId;
}
