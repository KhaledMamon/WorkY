import 'package:flutter/material.dart';

class MassageBubble extends StatelessWidget {
  const MassageBubble({
    super.key,
    required this.text,
    required this.isMe,
    required this.color,
  });

  final String text;
  final bool isMe;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 280),
        margin: const EdgeInsets.symmetric(vertical: 3),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: isMe ? color : Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
            bottomLeft: Radius.circular(isMe ? 20 : 0),
            bottomRight: Radius.circular(isMe ? 0 : 20),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isMe ? Colors.white : Colors.black87,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
