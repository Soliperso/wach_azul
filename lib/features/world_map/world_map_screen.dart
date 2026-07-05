import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_routes.dart';
import '../child_profile/child_profile_controller.dart';

class WorldMapScreen extends ConsumerWidget {
  const WorldMapScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(childProfileControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: profileState.when(
          data: (profile) {
            if (profile == null) {
              return _EmptyVillage(
                onCreateProfile: () => context.go(AppRoutes.childProfile),
              );
            }

            return _FamilyVillageView(
              childName: profile.name,
              avatar: profile.avatar,
              languageName: profile.languageName,
              onStartLesson: () => context.go(AppRoutes.firstWordLesson),
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
    required this.onStartLesson,
  });

  final String childName;
  final String avatar;
  final String languageName;
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
              Text(
                '$avatar Welcome, $childName',
                style: textTheme.titleLarge?.copyWith(
                  color: const Color(0xFF326BA8),
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Your $languageName adventure begins with family words and village sounds.',
                style: textTheme.titleMedium?.copyWith(
                  color: Colors.black54,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 28),
              _VillageLessonCard(
                title: 'First Words',
                subtitle: 'Practice greetings with your village guide.',
                status: 'Ready',
                color: const Color(0xFFC8ECFF),
                onPressed: onStartLesson,
              ),
              const SizedBox(height: 12),
              _VillageLessonCard(
                title: 'Family Circle',
                subtitle: 'Meet names for parents, siblings, and elders.',
                status: 'Locked',
                color: const Color(0xFFFFE3B8),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _VillageLessonCard extends StatelessWidget {
  const _VillageLessonCard({
    required this.title,
    required this.subtitle,
    required this.status,
    required this.color,
    this.onPressed,
  });

  final String title;
  final String subtitle;
  final String status;
  final Color color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: textTheme.bodyLarge?.copyWith(
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Text(
              status,
              style: textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w900,
              ),
            ),
            if (onPressed != null) ...[
              const SizedBox(width: 12),
              IconButton.filled(
                onPressed: onPressed,
                icon: const Icon(Icons.arrow_forward),
                tooltip: 'Start lesson',
              ),
            ],
          ],
        ),
      ),
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
