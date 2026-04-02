import 'package:flutter/material.dart';
import 'package:work_y/Profile/profile_widgets/experience_item.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Experience',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      ExperienceItem(
                        icon: Icons.business_center_outlined,
                        iconBg: const Color(0xFFEEF2FF),
                        iconColor: const Color(0xFF3244E6),
                        title: "Lead Product Engineer",
                        company: "Stripe (Contract)",
                        period: "Jan 2021 - Present",
                        description:
                            "Modernizing the internal dashboard architecture using Next.js and Tailwind CSS. Orchestrated the migration of legacy data tables to a high-performance virtualized grid system.",
                      ),
                      const Divider(height: 30),
                      ExperienceItem(
                        icon: Icons.cloud_outlined,
                        iconBg: const Color(0xFFE0F2FE),
                        iconColor: const Color(0xFF3244E6),
                        title: "Senior UI Developer",
                        company: "Dropbox",
                        period: "Jun 2018 - Dec 2020",
                        description:
                            "Collaborated with the design team to build and maintain the \"Nimbus\" design system. Reduced frontend bundle size by 30% through modular component refactoring.",
                      ),
                    ],
                  )
                ;
  }
}