import 'package:flutter/material.dart';

class XpWidget extends StatelessWidget {
  const XpWidget({super.key, required this.xp, this.compact = false});

  final int xp;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final style = compact ? textTheme.labelLarge : textTheme.displayMedium;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xFFC8ECFF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: compact ? 12 : 22,
          vertical: compact ? 8 : 18,
        ),
        child: Text(
          '+$xp XP',
          textAlign: TextAlign.center,
          style: style?.copyWith(
            color: const Color(0xFF326BA8),
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
