import 'package:flutter/material.dart';

import 'speech_bubble.dart';

class DialogueBox extends StatelessWidget {
  const DialogueBox({
    super.key,
    required this.speaker,
    required this.line,
    this.leading,
  });

  final String speaker;
  final String line;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (leading != null) ...[leading!, const SizedBox(width: 12)],
        Expanded(
          child: SpeechBubble(speaker: speaker, message: line),
        ),
      ],
    );
  }
}
