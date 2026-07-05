import 'package:flutter/material.dart';

class XpBar extends StatelessWidget {
  const XpBar({super.key, required this.xp, required this.nextRewardXp})
    : assert(nextRewardXp > 0);

  final int xp;
  final int nextRewardXp;

  @override
  Widget build(BuildContext context) {
    final clampedXp = xp.clamp(0, nextRewardXp);
    final progress = clampedXp / nextRewardXp;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$clampedXp / $nextRewardXp XP',
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w900),
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 12,
            backgroundColor: const Color(0xFFFFE3B8),
            color: const Color(0xFFFFB45F),
          ),
        ),
      ],
    );
  }
}
