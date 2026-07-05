import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'lesson_content.dart';
import 'lesson_progress.dart';

final lessonControllerProvider =
    NotifierProvider<LessonController, LessonProgress>(LessonController.new);

class LessonController extends Notifier<LessonProgress> {
  @override
  LessonProgress build() {
    return const LessonProgress.initial();
  }

  void startChallenge() {
    state = state.copyWith(step: LessonStep.challenge, clearAnswer: true);
  }

  void submitAnswer(String answer) {
    final isCorrect = answer == firstLessonWord.kabyle;

    state = state.copyWith(
      step: isCorrect ? LessonStep.reward : LessonStep.challenge,
      xp: isCorrect ? firstCollectibleReward.xp : state.xp,
      selectedAnswer: answer,
      isCorrect: isCorrect,
    );
  }

  void collectReward() {
    state = state.copyWith(step: LessonStep.celebration);
  }

  void restart() {
    state = const LessonProgress.initial();
  }
}
