import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({
    super.key,
    required this.current,
    required this.total,
    required this.label,
  }) : assert(total > 0);

  final int current;
  final int total;
  final String label;

  @override
  Widget build(BuildContext context) {
    final clampedCurrent = current.clamp(0, total);
    final value = clampedCurrent / total;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$label $clampedCurrent/$total',
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w900),
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LinearProgressIndicator(
            value: value,
            minHeight: 10,
            backgroundColor: const Color(0xFFFFE3B8),
            color: const Color(0xFF326BA8),
          ),
        ),
      ],
    );
  }
}
