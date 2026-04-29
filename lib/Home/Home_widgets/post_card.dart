import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String name;
  final String jobTitle;
  final String content;
  final String imageUrl;

  const PostCard({
    super.key,
    required this.name,
    required this.jobTitle,
    required this.content,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 12,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: const Color(0xFF1F2937),
                  child: const Icon(Icons.person, color: Colors.white),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color(0xFF111827),
                      ),
                    ),
                    Text(
                      jobTitle,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Color(0xFF9CA3AF),
                        letterSpacing: 0.3,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Icon(Icons.more_horiz, color: Colors.grey[400]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              content,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF374151),
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 18),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
            child: Container(
              height: 200,
              width: double.infinity,
              color: const Color(0xFF0F172A),
              child: Image.network(imageUrl, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                const Icon(
                  Icons.thumb_up_outlined,
                  size: 20,
                  color: Color(0xFF6B7280),
                ),
                const SizedBox(width: 6),
                const Text(
                  '124',
                  style: TextStyle(color: Color(0xFF6B7280), fontSize: 14),
                ),
                const SizedBox(width: 20),
                const Icon(
                  Icons.chat_bubble_outline,
                  size: 20,
                  color: Color(0xFF6B7280),
                ),
                const SizedBox(width: 6),
                const Text(
                  '18',
                  style: TextStyle(color: Color(0xFF6B7280), fontSize: 14),
                ),
                const Spacer(),
                const Icon(
                  Icons.share_outlined,
                  size: 20,
                  color: Color(0xFF6B7280),
                ),
                const SizedBox(width: 6),
                const Text(
                  'Share',
                  style: TextStyle(color: Color(0xFF6B7280), fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
