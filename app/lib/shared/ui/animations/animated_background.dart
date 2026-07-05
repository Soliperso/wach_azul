import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimatedBackground extends StatelessWidget {
  const AnimatedBackground({
    super.key,
    required this.child,
    this.colors = const [Color(0xFFFFFBF5), Color(0xFFC8ECFF)],
  });

  final Widget child;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
      ),
      child: child,
    ).animate().fadeIn(duration: 250.ms, curve: Curves.easeOutCubic);
  }
}
