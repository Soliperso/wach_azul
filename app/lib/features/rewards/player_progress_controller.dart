import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/models/player_progress.dart';
import '../lesson/lesson_content.dart';
import 'player_progress_repository.dart';

final playerProgressControllerProvider =
    AsyncNotifierProvider<PlayerProgressController, PlayerProgress>(
      PlayerProgressController.new,
    );

class PlayerProgressController extends AsyncNotifier<PlayerProgress> {
  @override
  Future<PlayerProgress> build() {
    return ref.watch(playerProgressRepositoryProvider).loadProgress();
  }

  Future<PlayerProgress> completeYemmaLesson() async {
    final previousProgress = state.value ?? const PlayerProgress.empty();
    final nextProgress = previousProgress.completeLesson(
      lessonId: yemmaLessonWord.id,
      collectibleId: yemmaCollectibleReward.id,
      earnedXp: yemmaCollectibleReward.xp,
      completedAt: DateTime.now(),
    );

    state = AsyncData(nextProgress);
    await ref.read(playerProgressRepositoryProvider).saveProgress(nextProgress);
    return nextProgress;
  }
}
