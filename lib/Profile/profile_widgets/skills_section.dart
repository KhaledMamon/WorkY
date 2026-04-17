import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
    Skills({super.key});
final skills = [
    "React / Next.js",
    "TypeScript",
    "Node.js",
    "Figma",
    "Tailwind CSS",
    "AWS Cloud",
    "GraphQL",
    "Docker",
  ];
  @override
  Widget build(BuildContext context) {
    return Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: skills
                        .map(
                          (s) => Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: const Color(0xFFE5E7EB),
                              ),
                            ),
                            child: Text(
                              s,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                        )
                        .toList(),
                  )
                ;
  }
}