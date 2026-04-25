import 'package:flutter/material.dart';
import 'package:work_y/Onboarding/onboarding_widget/dot_indicator.dart';
import 'package:work_y/Onboarding/onboarding_widget/expert_tage.dart';
import 'package:work_y/Onboarding/onboarding_widget/rate_tage.dart';
import 'package:work_y/Onboarding/onboarding_widget/secure_tage.dart';
import 'package:work_y/Setup/role_selection.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _data = [
    {
      "title": "Find Expert Talent",
      "desc":
          "Connect with top-rated freelancers across all industries and get your projects done efficiently.",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuD_WUN52Khn9Ho731nE2ebz2N7aLIKZbyPy4bLj997UuqfR82F6X4_jmLpDeGJ9R97F-ZU8EXMac-P99CzOg8V9s5deGf9qTTxbakCXSlWTecpe4vwAIzCfaiAy0YJxYo19ubuxhExj2ClxB88ejEpvq6uV8llUFeh_EJBHaKJcl8cSNx0UPABOKG5F6gJU1Mx4Row7l6z1BpjcFt1prsdcQUvtu-FEVIGPRl9kaRAiZ96x1xlhvX3bbWlScak2DHksOu1Cs1bSssyH",
      "button": "Next",
    },
    {
      "title": "Build Your Portfolio",
      "desc":
          "Showcase your best work and attract top clients from around the globe. Showcase your skills and grow your career.",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuARBF0DReCYkPS0ByspvI3w3FVQXyB_e_owF3e8QC487oNm87a2v4kTWNG77lHgTIif3t1LhxQDRpLfjxg2rzuUPZGIwkjpyB9qa18GhqEoy6xswAYCBbY6qJ1-bQ9KZtjW_IQ6p3MQDQY-FL_5RN7AT_2Pkd1z7hlAXKO6H6qCco13UZrSEk4Isiqyefs3legpw9XC28YNsmeiqlsL12n-iN3QrTc8cHA_NzVAkS7DHJb_h1ehnFF5dYQSUwD2m4HX50mlTsRVBQk6",
      "button": "Next",
    },
    {
      "title": "Secure Payments",
      "desc":
          "Get paid safely and quickly through our integrated secure payment system.",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuD1czc747dFoWl54yPMN3CsgBtuXIyyME6uFkyQjTT5-ZgDg9LrsJadmYTA2_ERziA8t2xvld6F2mBGaLnC-W8zIbDorC0RmOTdO93f0SPAfCOoA6X6hWpCk2y3zPovNz7iBTxrLiKd9iKjsZzpxmTBT4KKEmpSlr69UxQSBkJic4mhuPMjhEsVP8tofpKZpKHsV3rhqkq-SAUg7shtBUDvp89LO4Vf2P6Yf70t53ojYnKe71UFJYrPD_wB0qGeuShYwwK7VE_Seh2Z",
      "button": "Get Started",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemCount: _data.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        // image outer the image space (if need)
                        clipBehavior: Clip.none,
                        children: [
                          // background (image)
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              _data[i]['image']!,
                              width: 320,
                              height: 380,
                              fit: BoxFit.cover,
                            ),
                          ),

                          if (i == 0) ExpertVerified(),
                          if (i == 1) SuccessRate(),
                          if (i == 2) SecurePayments(),
                        ],
                      ),

                      const SizedBox(height: 20),
                      Text(
                        _data[i]['title']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2E2E2E),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        _data[i]['desc']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 110, 110, 110),
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _data.length,
              (index) => DotIndicator(index: index, currentPage: _currentPage),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              top: 25,
              bottom: 15,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3244E6),
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 65),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 0,
              ),
              onPressed: () {
                // print(_currentPage);
                if (_currentPage < 2) {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.ease,
                  );
                } else {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const RoleSelection(),
                    ),
                    (Route<dynamic> route) => false,
                  );
                }
              },
              child: Text(
                _data[_currentPage]['button']!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  if (_currentPage != 0) {
                    _controller.previousPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.ease,
                    );
                  }
                },
                child: Text(
                  _currentPage == 0 ? "" : "Back",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const RoleSelection(),
                    ),
                    (Route<dynamic> route) => false,
                  );
                },
                child: Text(
                  _currentPage == 2 ? "" : "Skip",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 25),
        ],
      ),
    );
  }
}
