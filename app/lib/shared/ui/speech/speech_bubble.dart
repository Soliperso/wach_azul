import 'package:flutter/material.dart';

class SpeechBubble extends StatelessWidget {
  const SpeechBubble({
    super.key,
    required this.message,
    this.speaker,
    this.color = const Color(0xFFFFFFFF),
  });

  final String message;
  final String? speaker;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: const Color(0xFFFFE3B8), width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (speaker != null) ...[
              Text(
                speaker!,
                style: textTheme.labelLarge?.copyWith(
                  color: const Color(0xFF326BA8),
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 6),
            ],
            Text(
              message,
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
