enum LessonStep { word, challenge, reward, celebration }

class LessonProgress {
  const LessonProgress({
    required this.step,
    required this.xp,
    this.selectedAnswer,
    this.isCorrect,
  });

  const LessonProgress.initial()
    : step = LessonStep.word,
      xp = 0,
      selectedAnswer = null,
      isCorrect = null;

  final LessonStep step;
  final int xp;
  final String? selectedAnswer;
  final bool? isCorrect;

  LessonProgress copyWith({
    LessonStep? step,
    int? xp,
    String? selectedAnswer,
    bool? isCorrect,
    bool clearAnswer = false,
  }) {
    return LessonProgress(
      step: step ?? this.step,
      xp: xp ?? this.xp,
      selectedAnswer: clearAnswer
          ? null
          : selectedAnswer ?? this.selectedAnswer,
      isCorrect: clearAnswer ? null : isCorrect ?? this.isCorrect,
    );
  }
}
