import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_routes.dart';
import '../../shared/ui/ui.dart';
import '../child_profile/child_profile_controller.dart';
import '../lesson/lesson_content.dart';
import '../rewards/player_progress_controller.dart';

class WorldMapScreen extends ConsumerWidget {
  const WorldMapScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(childProfileControllerProvider);
    final progressState = ref.watch(playerProgressControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: profileState.when(
          data: (profile) {
            if (profile == null) {
              return _EmptyVillage(
                onCreateProfile: () => context.go(AppRoutes.childProfile),
              );
            }

            final progress = progressState.asData?.value;

            return _FamilyVillageView(
              childName: profile.name,
              avatar: profile.avatar,
              languageName: profile.languageName,
              xp: progress?.xp ?? 0,
              hasYemmaCollectible:
                  progress?.unlockedCollectibleIds.contains(
                    yemmaCollectibleReward.id,
                  ) ??
                  false,
              onStartLesson: () => context.go(AppRoutes.yemmaLesson),
            );
          },
          error: (_, _) => _EmptyVillage(
            message: 'We could not load the village profile.',
            onCreateProfile: () => context.go(AppRoutes.childProfile),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}

class _FamilyVillageView extends StatelessWidget {
  const _FamilyVillageView({
    required this.childName,
    required this.avatar,
    required this.languageName,
    required this.xp,
    required this.hasYemmaCollectible,
    required this.onStartLesson,
  });

  final String childName;
  final String avatar;
  final String languageName;
  final int xp;
  final bool hasYemmaCollectible;
  final VoidCallback onStartLesson;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Family Village',
                style: textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  XpWidget(xp: xp, compact: true),
                  AdventureCard(
                    title: hasYemmaCollectible
                        ? yemmaCollectibleReward.name
                        : 'Collectible waiting',
                    subtitle: hasYemmaCollectible
                        ? 'Unlocked in Family Village'
                        : 'Complete Yemma to unlock a keepsake.',
                    status: hasYemmaCollectible ? 'Done' : 'Ready',
                    color: const Color(0xFFFFF3D8),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              CharacterCard(
                name: 'Welcome, $childName',
                subtitle:
                    'Your $languageName adventure begins with family words and village sounds.',
                symbol: avatar,
              ),
              const SizedBox(height: 28),
              WorldTile(
                title: 'A warm voice calls from the courtyard',
                subtitle: 'Tap Yemma to begin a family word adventure.',
                color: const Color(0xFFFFE3B8),
                onTap: onStartLesson,
              ),
              const SizedBox(height: 12),
              AnimatedButton(
                label: 'Tap Yemma',
                icon: Icons.favorite,
                onPressed: onStartLesson,
              ),
              const SizedBox(height: 16),
              AdventureCard(
                title: 'Yemma',
                subtitle:
                    'Learn a family word, match its sound, and earn a keepsake.',
                status: hasYemmaCollectible ? 'Done' : 'Ready',
                color: const Color(0xFFC8ECFF),
                icon: Icons.favorite,
                onPressed: onStartLesson,
              ),
              const SizedBox(height: 12),
              AdventureCard(
                title: 'Family Circle',
                subtitle: 'Meet names for parents, siblings, and elders.',
                status: 'Locked',
                color: const Color(0xFFFFE3B8),
                icon: Icons.lock,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _EmptyVillage extends StatelessWidget {
  const _EmptyVillage({
    required this.onCreateProfile,
    this.message = 'Create a profile to enter Family Village.',
  });

  final String message;
  final VoidCallback onCreateProfile;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: onCreateProfile,
              child: const Text('Create Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
