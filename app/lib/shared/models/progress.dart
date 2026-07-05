class Progress {
  const Progress({
    required this.childId,
    required this.xp,
    required this.completedLessonIds,
    required this.unlockedCollectibleIds,
  });

  final String childId;
  final int xp;
  final List<String> completedLessonIds;
  final List<String> unlockedCollectibleIds;
}
