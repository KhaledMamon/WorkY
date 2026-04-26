
import 'package:flutter/material.dart';

class SuggestedSkills extends StatelessWidget {
  const SuggestedSkills({super.key, required this.name, required this.onAdd});

  final String name;
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onAdd,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(name, style: TextStyle(fontSize: 12)),
      ),
    );
  }
}
