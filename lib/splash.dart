import 'dart:async';
import 'package:flutter/material.dart';
import 'package:work_y/onboarding.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  // time splash show 
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Onboarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3244E6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.15),
                borderRadius: BorderRadius.circular(42),
                border: Border.all(
                  color: Color.fromRGBO(255, 255, 255, 0.3),
                  width: 1.5,
                ),
              ),
              child: const Icon(Icons.work, color: Colors.white, size: 60),
            ),
            const SizedBox(height: 15),
            const Text(
              'WorkY',
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: const Color.fromARGB(
                      102,
                      255,
                      255,
                      255,
                    ), 
                    thickness: 1, // Line thickness
                    indent: 50, // Empty space at the start (left side)
                    endIndent: 20, // Empty space at the end (right side)
                  ),
                ),
                Text(
                  'Professional Talent',
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.518)),
                ),
                Expanded(
                  child: Divider(
                    color: const Color.fromARGB(
                      102,
                      255,
                      255,
                      255,
                    ), 
                    thickness: 1,
                    indent: 20,
                    endIndent: 50,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
