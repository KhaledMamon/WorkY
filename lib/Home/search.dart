import 'package:flutter/material.dart';
import 'package:work_y/Home/Home_widgets/job_card_search.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back, color: Color(0xFF3F51B5)),
        ),
        title: const Text(
          'Search',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF3244E6),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF3F7FA),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Search jobs or talent...",
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
              ),
              const SizedBox(height: 20),

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

              JobCardSearch(
                context: context,
                icon: Icons.auto_awesome_mosaic,
                iconColor: Colors.deepPurpleAccent,
                title: "Senior Product Designer",
                company: "Stellar Cloud • SF, California",
                skills: ["FIGMA", "REACT", "UX RESEARCH"],
                price: "\$80 - \$140 /hr",
              ),
              const SizedBox(height: 20),
              JobCardSearch(
                context: context,
                icon: Icons.motion_photos_on,
                iconColor: Colors.blueAccent,
                title: "Motion Graphics Lead",
                company: "Remote • London Timezone",
                skills: ["AFTER EFFECTS", "CINEMA 4D"],
                price: "\$110/hr",
              ),
              const SizedBox(height: 20),

              JobCardSearch(
                context: context,
                icon: Icons.auto_awesome_mosaic,
                iconColor: Colors.deepPurpleAccent,
                title: "Senior Product Designer",
                company: "Stellar Cloud • SF, California",
                skills: ["FIGMA", "REACT", "UX RESEARCH"],
                price: "\$80 - \$140 /hr",
              ),
              const SizedBox(height: 20),
              JobCardSearch(
                context: context,
                icon: Icons.motion_photos_on,
                iconColor: Colors.blueAccent,
                title: "Motion Graphics Lead",
                company: "Remote • London Timezone",
                skills: ["AFTER EFFECTS", "CINEMA 4D"],
                price: "\$110/hr",
              ),
              const SizedBox(height: 20),

              JobCardSearch(
                context: context,
                icon: Icons.auto_awesome_mosaic,
                iconColor: Colors.deepPurpleAccent,
                title: "Senior Product Designer",
                company: "Stellar Cloud • SF, California",
                skills: ["FIGMA", "REACT", "UX RESEARCH"],
                price: "\$80 - \$140 /hr",
              ),
              const SizedBox(height: 20),
              JobCardSearch(
                context: context,
                icon: Icons.motion_photos_on,
                iconColor: Colors.blueAccent,
                title: "Motion Graphics Lead",
                company: "Remote • London Timezone",
                skills: ["AFTER EFFECTS", "CINEMA 4D"],
                price: "\$110/hr",
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
