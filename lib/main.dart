import 'package:flutter/material.dart';
import 'splash.dart';

void main() {
  runApp(const WorkY());
}

class WorkY extends StatelessWidget {
  const WorkY({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Freelance App',
      home: const Splash(),
    );
  }
}
