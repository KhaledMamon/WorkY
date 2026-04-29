import 'package:flutter/material.dart';
import 'package:work_y/Home/Home_widgets/job_card.dart';
import 'package:work_y/Home/search.dart';

class TopRecommendation extends StatelessWidget {
  const TopRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Top Recommended',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF111827),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Search()),
                  );
                },
                child: const Text(
                  'VIEW ALL',
                  style: TextStyle(
                    color: Color(0xFF2563EB),
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),
        SizedBox(
          height: 175,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              JobCard(
                icon: Icons.person,
                iconBg: const Color(0xFFE8F0FE),
                name: 'Sarah Jenkins',
                role: 'UI/UX Designer',
                rating: 4.9,
                jobs: '1.2k+ jobs',
                rate: '\$85/hr',
              ),
              const SizedBox(width: 14),
              JobCard(
                icon: Icons.code,
                iconBg: const Color(0xFFEDE9FE),
                name: 'Alex Turner',
                role: 'Full Stack Dev',
                rating: 5.0,
                jobs: '800+ jobs',
                rate: '\$95/hr',
              ),
              const SizedBox(width: 14),
              JobCard(
                icon: Icons.brush,
                iconBg: const Color(0xFFFEF3C7),
                name: 'Mia Lopez',
                role: 'Graphic Designer',
                rating: 4.8,
                jobs: '600+ jobs',
                rate: '\$70/hr',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
