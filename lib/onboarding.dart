import 'package:flutter/material.dart';
import 'home.dart';

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

                          // Positioned for spasific location
                          Positioned(
                            bottom: 22,
                            right: 13,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 15,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(210, 255, 255, 255),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 100),
                                    blurRadius: 4,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize
                                    .min, // same size your content only
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    padding: const EdgeInsets.all(4),
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF3244E6),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.verified,
                                      color: Colors.white,
                                      size: 23,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'TOP RATED',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                            255,
                                            153,
                                            153,
                                            153,
                                          ),
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.0,
                                        ),
                                      ),
                                      Text(
                                        'Expert Verified',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xFF3244E6),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
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
                        // (_data[i]['desc']!.length > 150)
                        //     ? _data[i]['desc']!.substring(0, 30):
                        _data[i]['desc']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
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
            children: List.generate(_data.length, (index) => buildDot(index)),
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
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                } else {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const Home()),
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
          TextButton(
            onPressed: () {},
            child: Text(
              _currentPage == 2 ? "" : "Skip",
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }

  Widget buildDot(int index) {
    return Container(
      height: 8,
      width: _currentPage == index ? 30 : 15,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: _currentPage == index
            ? const Color(0xFF3244E6)
            : Colors.grey.shade300,
      ),
    );
  }
}
