import 'package:flutter/material.dart';

class QuickInfoSection extends StatelessWidget {
  const QuickInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hourly Rate",
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
            Text(
              "\$120/hr",
              style: TextStyle(
                color: const Color(0xFF3244E6),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Divider(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Response Time",
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
            Text(
              "< 2 hours",
              style: TextStyle(
                color: const Color(0xFF3244E6),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Divider(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Availability",
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
            Text(
              "Available",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
