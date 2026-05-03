import 'package:flutter/material.dart';
import 'package:work_y/Home/Home_widgets/post_card.dart';
import 'package:work_y/model.dart';

class PostsList extends StatelessWidget {
  final List<Post> posts;

  const PostsList({super.key, required this.posts});

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
        ...posts.asMap().entries.map((entry) {
          // final index = entry.key;
          final post = entry.value;

          return Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: PostCard(
              name: post.authorName,
              jobTitle: '${post.authorRole} • ${post.timeAgo}',
              content: post.content,
              imageUrl: post.postImageUrl,
            ),
          );
        }),
      ],
    );
  }
}
