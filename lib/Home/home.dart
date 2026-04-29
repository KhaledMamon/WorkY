import 'package:flutter/material.dart';
import 'package:work_y/Authentication/login.dart';
import 'package:work_y/Chat/messages.dart';
import 'package:work_y/Home/Home_widgets/post_list.dart';
import 'package:work_y/Home/Home_widgets/top_recommend.dart';
import 'package:work_y/Home/search.dart';
import 'package:work_y/Job/post_job.dart';
import 'package:work_y/Profile/profile.dart';
import 'package:work_y/Profile/profile_widgets/floating_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  int selectedI = 0;
  final tabs = ['ALL FEED', 'DESIGN', 'DEVELOPMENT', 'MARKETING', 'WRITING'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: MaterialButton(
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => Profile()));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://lh3.googleusercontent.com/aida-public/AB6AXuDDka4xNpbG1l6PvFRpm0lpsZ8xZHAJ0hQY2tDIAoUU7oiqbPi6lAYUXDeTr2nxqL1AbosnCgeRkTf8vwaJhz1PUzOgYL-qFcqrREIn2BH8n7Op3t2MvG3dfin5z4tHhxaq8BkG0q0G_BYEqUQBTChJoIdhYEmvbfWKXDIcBbfHg54iHlytLL2LVIRYKX_SPvLl4gYEG_qLKT1QIef82Tl4Ud45FaIKvs2K2kls4hU9fHPSdkpO1aZ9dH9isHE29f8DWhqXR54WF2Ab',
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          'WokY',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF3244E6),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => const Login()));
            },
            child: Text("Login", style: TextStyle(color: Color(0xFF3244E6))),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF4F6FA),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Search()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.06),
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for professionals or tasks...',
                        hintStyle: TextStyle(
                          color: Color(0xFF9CA3AF),
                          fontSize: 15,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFF9CA3AF),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: tabs.length,
                  itemBuilder: (context, index) {
                    final isSelected = index == selectedI;
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xFF2563EB)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              selectedI = index;
                            });
                          },
                          child: Text(
                            tabs[index],
                            style: TextStyle(
                              color: isSelected
                                  ? Colors.white
                                  : const Color(0xFF6B7280),
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 24),
              TopRecommendation(),
              const SizedBox(height: 28),
              PostsList(),
              const SizedBox(height: 120),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(33, 10, 0, 5),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.3),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingItem(
                index: 0,
                iconSelected: Icons.home,
                iconUnselected: Icons.home_rounded,
                label: ' HOME ',
                isSelected: selectedIndex == 0,
                onTap: () {
                  setState(() => selectedIndex = 0);
                  // Navigator.of(
                  //   context,
                  // ).push(MaterialPageRoute(builder: (context) => Home()));
                },
              ),

              FloatingItem(
                index: 1,
                iconSelected: Icons.chat_bubble,
                iconUnselected: Icons.chat_bubble_outline,
                label: 'Chat',
                isSelected: selectedIndex == 1,
                onTap: () {
                  setState(() => selectedIndex = 1);
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Messages()),
                  );
                },
              ),
              FloatingItem(
                index: 2,
                iconSelected: Icons.add_circle,
                iconUnselected: Icons.add_circle_outline,
                label: 'POST',
                isSelected: selectedIndex == 2,
                onTap: () {
                  setState(() => selectedIndex = 2);
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const PostJob()),
                  );
                },
              ),
              FloatingItem(
                index: 3,
                iconSelected: Icons.person,
                iconUnselected: Icons.person_outline,
                label: 'Profile',
                isSelected: selectedIndex == 3,
                onTap: () {
                  setState(() => selectedIndex = 3);
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
                },
                isProfile: true,
              ),
              FloatingItem(
                index: 4,
                iconSelected: Icons.settings,
                iconUnselected: Icons.settings_outlined,
                label: 'Settings',
                isSelected: selectedIndex == 4,
                onTap: () => setState(() => selectedIndex = 4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
