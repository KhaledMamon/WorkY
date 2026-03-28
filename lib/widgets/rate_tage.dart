import 'package:flutter/material.dart';

class SuccessRate extends StatelessWidget {
  const SuccessRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 91,
      left: 16,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(210, 255, 255, 255),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(
                132,
                99,
                99,
                99,
              ).withValues(alpha: 100),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Success Rate',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                // letterSpacing: 1.0,
              ),
            ),
            Text(
              '98%',
              style: TextStyle(
                fontSize: 25,
                color: Color(0xFF3244E6),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
