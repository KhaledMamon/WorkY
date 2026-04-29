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
import 'package:work_y/Setting/setting.dart';
import 'package:work_y/Profile/manage_applications.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            icon: const Icon(Icons.manage_accounts, color: Color(0xFF3244E6)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ManageApplications(),
                ),
              );
            },
          ),
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
