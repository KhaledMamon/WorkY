import 'package:flutter/material.dart';
import 'package:work_y/Profile/profile_widgets/about_section.dart';
import 'package:work_y/Profile/profile_widgets/education_section.dart';
import 'package:work_y/Profile/profile_widgets/experience_section.dart';
import 'package:work_y/Profile/profile_widgets/portfolio_section.dart';
import 'package:work_y/Profile/profile_widgets/info_section.dart';
import 'package:work_y/Profile/profile_widgets/profile_container.dart';
import 'package:work_y/Profile/profile_widgets/quick_info_section.dart';
import 'package:work_y/Profile/profile_widgets/skills_section.dart';
import 'package:work_y/Profile/profile_widgets/top_rated_section.dart';
import 'package:work_y/Profile/profile_widgets/floating_item.dart';
import 'package:work_y/Setting/setting.dart';
// import 'package:work_y/meligy/Setting.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xFFE7E8EB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F8FC),
        title: const Text(
          "WorkY",
          style: TextStyle(
            color: Color(0xFF3244E6),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF3244E6)),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit, color: Color(0xFF3244E6)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditPage()),
              );
            },
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(33, 10, 0, 5),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                iconSelected: Icons.person,
                iconUnselected: Icons.person_outline,
                label: 'الملف الشخصي',
                isSelected: _selectedIndex == 0,
                onTap: () => setState(() => _selectedIndex = 0),
                isProfile: true,
              ),
              FloatingItem(
                index: 1,
                iconSelected: Icons.chat_bubble,
                iconUnselected: Icons.chat_bubble_outline,
                label: 'المحادثات',
                isSelected: _selectedIndex == 1,
                onTap: () => setState(() => _selectedIndex = 1),
                badgeCount: 2,
              ),
              FloatingItem(
                index: 2,
                iconSelected: Icons.people,
                iconUnselected: Icons.people_outline,
                label: 'جهات الاتصال',
                isSelected: _selectedIndex == 2,
                onTap: () => setState(() => _selectedIndex = 2),
                hasAlert: true,
              ),
              FloatingItem(
                index: 3,
                iconSelected: Icons.settings,
                iconUnselected: Icons.settings_outlined,
                label: 'Settings',
                isSelected: _selectedIndex == 3,
                onTap: () => setState(() => _selectedIndex = 3),
              ),
            ],
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const ProfileContainer(child: InfoSection()),
                const SizedBox(height: 15),

                const ProfileContainer(child: AboutSection()),
                const SizedBox(height: 15),

                const ProfileContainer(child: PortfolioSection()),
                const SizedBox(height: 15),

                const ProfileContainer(child: ExperienceSection()),
                const SizedBox(height: 15),

                const ProfileContainer(
                  backgroundColor: Color(0xFF3244E6),
                  child: TopRatedSection(),
                ),
                const SizedBox(height: 15),

                ProfileContainer(child: Skills()),
                const SizedBox(height: 15),

                const ProfileContainer(child: EducationSection()),
                const SizedBox(height: 15),

                const ProfileContainer(child: QuickInfoSection()),
                const SizedBox(height: 110),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
