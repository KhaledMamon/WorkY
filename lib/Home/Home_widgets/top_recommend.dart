import 'package:flutter/material.dart';
import 'package:work_y/Home/Home_widgets/job_card.dart';
import 'package:work_y/Home/search.dart';
import 'package:work_y/model.dart';

class TopRecommendation extends StatelessWidget {
  final List<Freelancer> freelancers;

  const TopRecommendation({super.key, required this.freelancers});

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
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: freelancers.length,
            itemBuilder: (context, index) {
              final freelancer = freelancers[index];
              return Padding(
                padding: const EdgeInsets.only(right: 14),
                child: JobCard(
                  icon: Icons.person,
                  iconBg: const Color(0xFFE8F0FE),
                  name: freelancer.name,
                  role: freelancer.role,
                  rating: freelancer.rating,
                  jobs: freelancer.jobsCount,
                  rate: '\$${freelancer.hourlyRate}/hr',
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
