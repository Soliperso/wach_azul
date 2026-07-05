import 'package:flutter/material.dart';

class CollectibleCard extends StatelessWidget {
  const CollectibleCard({
    super.key,
    required this.symbol,
    required this.name,
    required this.description,
    required this.unlocked,
  });

  final String symbol;
  final String name;
  final String description;
  final bool unlocked;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: unlocked ? const Color(0xFFFFF3D8) : const Color(0xFFE9E1D3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            Text(unlocked ? symbol : '?', style: const TextStyle(fontSize: 42)),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    unlocked ? name : 'Mystery Collectible',
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    unlocked ? description : 'Keep exploring to unlock this.',
                    style: textTheme.bodyLarge?.copyWith(
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
