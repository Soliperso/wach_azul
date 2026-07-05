import 'package:flutter/material.dart';

class AdventureCard extends StatelessWidget {
  const AdventureCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.status,
    required this.color,
    this.icon,
    this.onPressed,
  });

  final String title;
  final String subtitle;
  final String status;
  final Color color;
  final IconData? icon;
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
            if (icon != null) ...[
              Icon(icon, size: 30, color: const Color(0xFF1D4B73)),
              const SizedBox(width: 14),
            ],
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
                tooltip: 'Start',
              ),
            ],
          ],
        ),
      ),
    );
  }
}
