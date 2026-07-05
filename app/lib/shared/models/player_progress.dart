class PlayerProgress {
  const PlayerProgress({
    required this.xp,
    required this.unlockedCollectibleIds,
    required this.completedLessonIds,
    this.lastCompletedAt,
  });

  const PlayerProgress.empty()
    : xp = 0,
      unlockedCollectibleIds = const [],
      completedLessonIds = const [],
      lastCompletedAt = null;

  final int xp;
  final List<String> unlockedCollectibleIds;
  final List<String> completedLessonIds;
  final DateTime? lastCompletedAt;

  factory PlayerProgress.fromJson(Map<String, Object?> json) {
    return PlayerProgress(
      xp: json['xp'] as int? ?? 0,
      unlockedCollectibleIds: _stringListFromJson(
        json['unlockedCollectibleIds'],
      ),
      completedLessonIds: _stringListFromJson(json['completedLessonIds']),
      lastCompletedAt: DateTime.tryParse(
        json['lastCompletedAt'] as String? ?? '',
      ),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'xp': xp,
      'unlockedCollectibleIds': unlockedCollectibleIds,
      'completedLessonIds': completedLessonIds,
      'lastCompletedAt': lastCompletedAt?.toIso8601String(),
    };
  }

  PlayerProgress completeLesson({
    required String lessonId,
    required String collectibleId,
    required int earnedXp,
    required DateTime completedAt,
  }) {
    final alreadyCompleted = completedLessonIds.contains(lessonId);

    return PlayerProgress(
      xp: alreadyCompleted ? xp : xp + earnedXp,
      unlockedCollectibleIds: _appendUnique(
        unlockedCollectibleIds,
        collectibleId,
      ),
      completedLessonIds: _appendUnique(completedLessonIds, lessonId),
      lastCompletedAt: completedAt,
    );
  }

  static List<String> _stringListFromJson(Object? value) {
    if (value is! List) {
      return const [];
    }

    return value.whereType<String>().toList(growable: false);
  }

  static List<String> _appendUnique(List<String> values, String value) {
    if (values.contains(value)) {
      return values;
    }

    return [...values, value];
  }
}
