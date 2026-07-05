import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../rewards/player_progress_controller.dart';
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
    final isCorrect = answer == yemmaLessonWord.kabyle;

    state = state.copyWith(
      step: isCorrect ? LessonStep.reward : LessonStep.challenge,
      xp: isCorrect ? yemmaCollectibleReward.xp : state.xp,
      selectedAnswer: answer,
      isCorrect: isCorrect,
    );
  }

  Future<void> collectReward() async {
    await ref
        .read(playerProgressControllerProvider.notifier)
        .completeYemmaLesson();
    state = state.copyWith(step: LessonStep.celebration);
  }

  void restart() {
    state = const LessonProgress.initial();
  }
}
