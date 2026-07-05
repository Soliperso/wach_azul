import 'package:flutter/material.dart';

class FoxWidget extends StatelessWidget {
  const FoxWidget({super.key, this.label = 'Azul', this.size = 72});

  final String label;
  final double size;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: size,
          height: size,
          decoration: const BoxDecoration(
            color: Color(0xFFFFB45F),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.pets,
            size: size * 0.46,
            color: const Color(0xFF5A2B12),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}
