import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class FloatingCloud extends StatelessWidget {
  const FloatingCloud({super.key, this.width = 96, this.opacity = 0.72});

  final double width;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Icon(
          Icons.cloud,
          size: width,
          color: Colors.white.withValues(alpha: opacity),
        )
        .animate(onPlay: (controller) => controller.repeat(reverse: true))
        .moveY(begin: -4, end: 4, duration: 2200.ms, curve: Curves.easeInOut);
  }
}
