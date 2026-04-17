import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    required this.icon,
    required this.title,
    required this.value,
    required this.onChanged,
    super.key,
  });
  final IconData icon;
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: SwitchListTile(
        secondary: CircleAvatar(
          backgroundColor: const Color(0xFFE8EAF6),
          child: Icon(icon, color: const Color(0xFF3244E6), size: 20),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        value: value,
        activeColor: const Color(0xFF3244E6),
        onChanged: onChanged,
      ),
    );
  }
}
