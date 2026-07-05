import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'primary_button.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final button = PrimaryButton(
      label: label,
      icon: icon,
      onPressed: onPressed,
    );

    return button
        .animate(target: onPressed == null ? 0 : 1)
        .scale(
          begin: const Offset(0.98, 0.98),
          end: const Offset(1, 1),
          duration: 220.ms,
          curve: Curves.easeOutBack,
        );
  }
}
