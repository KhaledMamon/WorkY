import 'package:flutter/material.dart';
import 'package:work_y/Job/Job_widgets/info_card.dart';
import 'package:work_y/Job/Job_widgets/requirment_item.dart';
import 'package:work_y/Job/Job_widgets/section_title.dart';
import 'package:work_y/Job/Job_widgets/skill.dart';

class JobDetails extends StatefulWidget {
  const JobDetails({super.key});

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  int _selectedTab = 0;

  final List<String> _tabs = ['About', 'Company', 'Review'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.06),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.mail_outline_rounded,
                  color: Color(0xFF4B5563),
                  size: 35,
                ),
              ),

              Expanded(
                child: SizedBox(
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3244E6),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Apply for Job',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      appBar: AppBar(
        backgroundColor: Color(0xFFF7F8FC),
        title: const Text(
          'WorkY',
          style: TextStyle(
            color: Color(0xFF3244E6),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.share_outlined,
                size: 18,
                color: Color(0xFF1A1A2E),
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 4),
          Container(
            margin: const EdgeInsets.only(top: 8, bottom: 8, right: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.bookmark_border,
                size: 18,
                color: Color(0xFF1A1A2E),
              ),
              onPressed: () {},
            ),
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 16,
            color: Color(0xFF1A1A2E),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: const Color(0xFFE7E8EB),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 40),

            // Company Logo
            CircleAvatar(
              radius: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuD_WUN52Khn9Ho731nE2ebz2N7aLIKZbyPy4bLj997UuqfR82F6X4_jmLpDeGJ9R97F-ZU8EXMac-P99CzOg8V9s5deGf9qTTxbakCXSlWTecpe4vwAIzCfaiAy0YJxYo19ubuxhExj2ClxB88ejEpvq6uV8llUFeh_EJBHaKJcl8cSNx0UPABOKG5F6gJU1Mx4Row7l6z1BpjcFt1prsdcQUvtu-FEVIGPRl9kaRAiZ96x1xlhvX3bbWlScak2DHksOu1Cs1bSssyH',
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Job Title
            const Text(
              'Senior Flutter Developer',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Color(0xFF0F0F1A),
                letterSpacing: -0.5,
              ),
            ),

            const SizedBox(height: 8),

            // Company & Location
            const Text(
              textAlign: TextAlign.center,
              'Spider Tech',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0xFF3244E6),
              ),
            ),
            const SizedBox(height: 4),

            const Text(
              textAlign: TextAlign.center,
              'SAN FRANCISCO, CA',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF9CA3AF),
                letterSpacing: 1.2,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 24),

            // Info Cards Grid
            Row(
              children: [
                Expanded(
                  child: InfoCard(
                    icon: Icons.wallet_outlined,
                    label: 'SALARY',
                    value: '\$160k - \$210k',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: InfoCard(
                    icon: Icons.access_time_rounded,
                    label: 'JOB TYPE',
                    value: 'Full-time',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: InfoCard(
                    icon: Icons.location_on_outlined,
                    label: 'MODEL',
                    value: 'Hybrid',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: InfoCard(
                    icon: Icons.trending_up_rounded,
                    label: 'LEVEL',
                    value: 'Senior (L5)',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),

            // Tabs
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: List.generate(
                  _tabs.length,
                  (index) => Expanded(
                    child: SizedBox(
                      height: 30,
                      child: GestureDetector(
                        onTap: () => setState(() => _selectedTab = index),
                        child: Text(
                          _tabs[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: _selectedTab == index
                                ? FontWeight.w700
                                : FontWeight.w500,
                            color: _selectedTab == index
                                ? const Color(0xFF3244E6)
                                : const Color(0xFF9CA3AF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 28),

            // Job Description
            SectionTitle(title: 'Job Description'),
            const SizedBox(height: 12),

            const Text(
              'We are looking for a Senior Flutter Developer to join our Core Dashboard team. You will be responsible for defining the user experience for millions of businesses worldwide, focusing on clarity, efficiency, and aesthetics.\n\n You\'ll collaborate closely with engineering and product management to ship high-impact features that define the future of global commerce.',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF4B5563),
                height: 1.7,
              ),
            ),
            const SizedBox(height: 28),

            // Requirements
            SectionTitle(title: 'Requirements'),
            const SizedBox(height: 16),

            RequirementItem(
              text:
                  '5+ years of experience in Flutter development at high-growth tech companies.',
            ),
            RequirementItem(
              text:
                  'Expert proficiency in Figma and prototyping tools (Protopie, Framer).',
            ),
            RequirementItem(
              text:
                  'Strong visual design craft and systems thinking capabilities.',
            ),
            RequirementItem(
              text: 'Ability to work autonomously in a fast-paced environment.',
            ),
            const SizedBox(height: 28),

            // Core Skills
            SectionTitle(title: 'Core Skills'),
            const SizedBox(height: 14),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                SkillChip(label: 'Product Strategy'),
                SkillChip(label: 'Interaction Design'),
                SkillChip(label: 'Design Systems'),
                SkillChip(label: 'Figma Expert'),
              ],
            ),

            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
