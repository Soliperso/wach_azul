import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_routes.dart';
import '../../shared/ui/ui.dart';
import 'lesson_content.dart';
import 'lesson_controller.dart';
import 'lesson_progress.dart';

class YemmaLessonScreen extends ConsumerWidget {
  const YemmaLessonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = ref.watch(lessonControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: AnimatedSwitcher(
          duration: 250.ms,
          child: switch (progress.step) {
            LessonStep.word => const _WordStep(),
            LessonStep.challenge => _ChallengeStep(
              selectedAnswer: progress.selectedAnswer,
              isCorrect: progress.isCorrect,
            ),
            LessonStep.reward => _RewardStep(xp: progress.xp),
            LessonStep.celebration => _CelebrationStep(xp: progress.xp),
          },
        ),
      ),
    );
  }
}

class _LessonFrame extends StatelessWidget {
  const _LessonFrame({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 560),
          child: Column(
            key: ValueKey(children.first.runtimeType),
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: children,
          ),
        ),
      ),
    );
  }
}

class _WordStep extends ConsumerWidget {
  const _WordStep();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return _LessonFrame(
      children: [
        const ProgressWidget(current: 1, total: 4, label: 'Lesson'),
        const SizedBox(height: 24),
        CharacterCard(
          name: yemmaLessonWord.kabyle,
          subtitle: yemmaLessonWord.english,
          symbol: 'Y',
        ),
        const SizedBox(height: 18),
        Text(
          yemmaLessonWord.kabyle,
          textAlign: TextAlign.center,
          style: textTheme.displayLarge?.copyWith(
            color: const Color(0xFF1D4B73),
            fontWeight: FontWeight.w900,
          ),
        ).animate().scale(duration: 450.ms, curve: Curves.easeOutBack),
        const SizedBox(height: 12),
        Text(
          yemmaLessonWord.english,
          textAlign: TextAlign.center,
          style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w900),
        ),
        const SizedBox(height: 8),
        Text(
          yemmaLessonWord.pronunciation,
          textAlign: TextAlign.center,
          style: textTheme.titleLarge?.copyWith(
            color: Colors.black54,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 28),
        SpeechBubble(
          speaker: 'Family Village',
          message: yemmaLessonWord.familyPrompt,
        ),
        const SizedBox(height: 28),
        AnimatedButton(
          label: 'Listen & Match',
          icon: Icons.volume_up,
          onPressed: ref.read(lessonControllerProvider.notifier).startChallenge,
        ),
      ],
    );
  }
}

class _ChallengeStep extends ConsumerWidget {
  const _ChallengeStep({required this.selectedAnswer, required this.isCorrect});

  final String? selectedAnswer;
  final bool? isCorrect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _LessonFrame(
      children: [
        const ProgressWidget(current: 2, total: 4, label: 'Lesson'),
        const SizedBox(height: 24),
        SpeechBubble(
          speaker: 'Azul',
          message: 'Listen: yem-ma. Which word did you hear?',
        ),
        const SizedBox(height: 24),
        for (final option in yemmaChallengeOptions) ...[
          OutlinedButton(
            onPressed: () {
              ref.read(lessonControllerProvider.notifier).submitAnswer(option);
            },
            child: Text(option),
          ),
          const SizedBox(height: 12),
        ],
        if (isCorrect == false && selectedAnswer != null) ...[
          const SizedBox(height: 8),
          Text(
            'Try again. Listen for the gentle yem-ma sound.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).colorScheme.error,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ],
    );
  }
}

class _RewardStep extends ConsumerWidget {
  const _RewardStep({required this.xp});

  final int xp;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _LessonFrame(
      children: [
        const ProgressWidget(current: 3, total: 4, label: 'Lesson'),
        const SizedBox(height: 18),
        XpWidget(xp: xp),
        const SizedBox(height: 18),
        RewardPopup(
          symbol: yemmaCollectibleReward.symbol,
          title: yemmaCollectibleReward.name,
          description: yemmaCollectibleReward.description,
          actionLabel: 'Unlock ${yemmaCollectibleReward.name}',
          onAction: ref.read(lessonControllerProvider.notifier).collectReward,
        ),
      ],
    );
  }
}

class _CelebrationStep extends ConsumerWidget {
  const _CelebrationStep({required this.xp});

  final int xp;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _LessonFrame(
      children: [
        const ProgressWidget(current: 4, total: 4, label: 'Lesson'),
        const SizedBox(height: 18),
        CelebrationDialog(
          title: 'Azul!',
          message:
              'You earned $xp XP and unlocked the ${yemmaCollectibleReward.name}.',
          detail:
              'Come back tomorrow. Family Village will remember what you learned.',
          actionLabel: 'Back to Family Village',
          onAction: () {
            ref.read(lessonControllerProvider.notifier).restart();
            context.go(AppRoutes.worldMap);
          },
        ),
      ],
    );
  }
}
