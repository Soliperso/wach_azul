import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_routes.dart';
import 'lesson_content.dart';
import 'lesson_controller.dart';
import 'lesson_progress.dart';

class FirstWordLessonScreen extends ConsumerWidget {
  const FirstWordLessonScreen({super.key});

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
        Text(
          firstLessonWord.kabyle,
          textAlign: TextAlign.center,
          style: textTheme.displayLarge?.copyWith(
            color: const Color(0xFF1D4B73),
            fontWeight: FontWeight.w900,
          ),
        ).animate().scale(duration: 450.ms, curve: Curves.easeOutBack),
        const SizedBox(height: 12),
        Text(
          firstLessonWord.english,
          textAlign: TextAlign.center,
          style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w900),
        ),
        const SizedBox(height: 8),
        Text(
          firstLessonWord.pronunciation,
          textAlign: TextAlign.center,
          style: textTheme.titleLarge?.copyWith(
            color: Colors.black54,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 28),
        _SoftPanel(
          child: Text(
            firstLessonWord.familyPrompt,
            textAlign: TextAlign.center,
            style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
          ),
        ),
        const SizedBox(height: 28),
        ElevatedButton(
          onPressed: ref.read(lessonControllerProvider.notifier).startChallenge,
          child: const Text('Practice Azul'),
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
    final textTheme = Theme.of(context).textTheme;

    return _LessonFrame(
      children: [
        Text(
          'Which word means hello?',
          textAlign: TextAlign.center,
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 24),
        for (final option in firstChallengeOptions) ...[
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
            'Try again. Listen for the warm ah-zool sound.',
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
    final textTheme = Theme.of(context).textTheme;

    return _LessonFrame(
      children: [
        Text(
          '+$xp XP',
          textAlign: TextAlign.center,
          style: textTheme.displayMedium?.copyWith(
            color: const Color(0xFF326BA8),
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 18),
        _SoftPanel(
          child: Column(
            children: [
              Text(
                firstCollectibleReward.symbol,
                style: const TextStyle(fontSize: 64),
              ),
              const SizedBox(height: 8),
              Text(
                firstCollectibleReward.name,
                textAlign: TextAlign.center,
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                firstCollectibleReward.description,
                textAlign: TextAlign.center,
                style: textTheme.titleMedium?.copyWith(
                  color: Colors.black54,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 28),
        ElevatedButton(
          onPressed: ref.read(lessonControllerProvider.notifier).collectReward,
          child: const Text('Collect Village Star'),
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
    final textTheme = Theme.of(context).textTheme;

    return _LessonFrame(
      children: [
        Text(
          'Azul!',
          textAlign: TextAlign.center,
          style: textTheme.displayLarge?.copyWith(
            color: const Color(0xFF1D4B73),
            fontWeight: FontWeight.w900,
          ),
        ).animate().scale(duration: 500.ms, curve: Curves.easeOutBack),
        const SizedBox(height: 12),
        Text(
          'You earned $xp XP and the ${firstCollectibleReward.name}.',
          textAlign: TextAlign.center,
          style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w900),
        ),
        const SizedBox(height: 12),
        Text(
          'Come back tomorrow to help Family Village grow.',
          textAlign: TextAlign.center,
          style: textTheme.titleMedium?.copyWith(
            color: Colors.black54,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 28),
        ElevatedButton(
          onPressed: () {
            ref.read(lessonControllerProvider.notifier).restart();
            context.go(AppRoutes.worldMap);
          },
          child: const Text('Back to Family Village'),
        ),
      ],
    );
  }
}

class _SoftPanel extends StatelessWidget {
  const _SoftPanel({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xFFFFF3D8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(padding: const EdgeInsets.all(18), child: child),
    );
  }
}
