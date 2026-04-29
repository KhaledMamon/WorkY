import 'package:flutter/material.dart';
import 'package:work_y/Home/Home_widgets/post_card.dart';

class PostsList extends StatelessWidget {
  const PostsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Posts',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
            ),
          ),
        ),
        const SizedBox(height: 14),
        PostCard(
          name: 'Helena Zhang',
          jobTitle: 'PRODUCT LEAD • 2H AGO',
          content:
              'Looking for a freelance brand strategist for a 3-month Fintech project. Must have experience in high-growth startups and a portfolio showcasing modern visual identities. DM for details! 🚀',
          imageUrl:
              'https://sy-tdr.com/wp-content/uploads/2025/02/freelancing-work-and-its-statutory-laws-and-regulations-in-the-UK-explained-by-Papershift-min-910x500-1-500x300.jpeg',
        ),
        SizedBox(height: 20),

        PostCard(
          name: 'Khaled gamal',
          jobTitle: 'Flutter developer • 8H AGO',
          content:
              'Looking for a freelance brand strategist for a 2-month Fintech project.',
          imageUrl: 'https://www.edlibre.com/wp-content/uploads/freelance.jpg',
        ),
        SizedBox(height: 20),

        PostCard(
          name: 'Ahmad',
          jobTitle: 'Full stack developer • 1H AGO',
          content:
              'Looking for a freelance brand strategist for a 8-month Fintech project.',
          imageUrl:
              'https://smallbusiness-production.s3.amazonaws.com/uploads/2018/01/Going-freelance-1568x1045.jpeg',
        ),
      ],
    );
  }
}
