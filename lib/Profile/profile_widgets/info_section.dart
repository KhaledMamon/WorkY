import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://lh3.googleusercontent.com/aida-public/AB6AXuBvmBQ_ILLng6LVUXYTp_7sV4Sg_iQf-02rgfSkdiu_hp5YdgkWhS-AfyXvD5eDlrvGeA4v1VHDMASgR67Tu6dMqoo60zcZfSYFUCIFPSlq5UORgPypzzBtzK0rLq7bVxCb0nmlwM_ekGnLr4HvKCBh6UTPpGYYF93vltdBWnpOPhZDWYvDYtYOcQ2SzG0EJQqW3moAdhkXQLQVmutWk5t_4FxqFzw5aO9FgOmCufM0P6NvO6OH1rATTHDkW7Gko_aTINfji8PX5lu5',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 150,
              ),
            ),

            Positioned(
              bottom: -35,
              right: 12,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuDDka4xNpbG1l6PvFRpm0lpsZ8xZHAJ0hQY2tDIAoUU7oiqbPi6lAYUXDeTr2nxqL1AbosnCgeRkTf8vwaJhz1PUzOgYL-qFcqrREIn2BH8n7Op3t2MvG3dfin5z4tHhxaq8BkG0q0G_BYEqUQBTChJoIdhYEmvbfWKXDIcBbfHg54iHlytLL2LVIRYKX_SPvLl4gYEG_qLKT1QIef82Tl4Ud45FaIKvs2K2kls4hU9fHPSdkpO1aZ9dH9isHE29f8DWhqXR54WF2Ab',
                  ),
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 15),
        const Text(
          "Ahmed El-Meligy",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        const Text(
          "Full-Stack Developer ",
          style: TextStyle(
            color: Color(0xFF3244E6),
            fontWeight: FontWeight.w600,
            fontSize: 13,
          ),
        ),
        const SizedBox(height: 10),

        // Location & Date
        const Row(
          children: [
            Icon(Icons.location_on_outlined, size: 14, color: Colors.grey),
            Text(
              " Mansoura, Egypt",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(width: 15),
            Icon(Icons.calendar_today_outlined, size: 14, color: Colors.grey),
            Text(
              " Joined March 2022",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        const SizedBox(height: 20),

        // Buttons
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  side: const BorderSide(color: Color(0xFF3244E6)),
                ),
                child: const Text(
                  "Message",
                  style: TextStyle(color: Color(0xFF3244E6)),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3244E6),
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  "Hire Me",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
