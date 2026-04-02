import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About',
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10),
                      const Text(
                        "I bridge the gap between complex engineering and human-centric design. With over 8 years of experience building scalable web applications, I specialize in React, Node.js, and the craft of pixel-perfect interfaces. My goal is to build digital products that aren't just functional, but an absolute joy to use.",
                        style: TextStyle(
                          height: 1.6,
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
              ;
  }
}