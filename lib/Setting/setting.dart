import 'package:flutter/material.dart';
import 'package:work_y/Profile/profile_widgets/floating_item.dart';
import 'package:work_y/Setting/setting_widgets/notification.dart';
import 'package:work_y/Setting/setting_widgets/text_field.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  bool _newMatches = true;
  bool _directMessages = true;
  bool _productUpdates = false;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF3244E6)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Color(0xFF3244E6),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.grey),
            onPressed: () {},
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
                iconSelected: Icons.payments,
                iconUnselected: Icons.payments_outlined,
                label: 'وسائل الدفع',
                isSelected: _selectedIndex == 0,
                onTap: () => setState(() => _selectedIndex = 0),
              ),
              FloatingItem(
                index: 1,
                iconSelected: Icons.work,
                iconUnselected: Icons.work_outline,
                label: 'المشاريع',
                isSelected: _selectedIndex == 1,
                onTap: () => setState(() => _selectedIndex = 1),
              ),
              FloatingItem(
                index: 2,
                iconSelected: Icons.chat_bubble,
                iconUnselected: Icons.chat_bubble_outline,
                label: 'المحادثات',
                isSelected: _selectedIndex == 2,
                onTap: () => setState(() => _selectedIndex = 2),
                badgeCount: 2,
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

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(height: 20),

            Center(
              child: Stack(
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
                    bottom: -50,
                    right: 110,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: const CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                          'https://lh3.googleusercontent.com/aida-public/AB6AXuDDka4xNpbG1l6PvFRpm0lpsZ8xZHAJ0hQY2tDIAoUU7oiqbPi6lAYUXDeTr2nxqL1AbosnCgeRkTf8vwaJhz1PUzOgYL-qFcqrREIn2BH8n7Op3t2MvG3dfin5z4tHhxaq8BkG0q0G_BYEqUQBTChJoIdhYEmvbfWKXDIcBbfHg54iHlytLL2LVIRYKX_SPvLl4gYEG_qLKT1QIef82Tl4Ud45FaIKvs2K2kls4hU9fHPSdkpO1aZ9dH9isHE29f8DWhqXR54WF2Ab',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            const Text(
              'Ahmed El-Meligy',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF333333),
              ),
            ),
            const Text(
              'Senior Product Designer',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE8EAF6),
                    foregroundColor: Color(0xFF3244E6),
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Upload New',
                    style: TextStyle(color: Color(0xFF3244E6)),
                  ),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Remove',
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'PERSONAL DETAILS',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextFieldNew(label: 'Full Name', value: 'Donaled trumb'),
            TextFieldNew(label: 'Email Address', value: 'example@gamil.com'),
            TextFieldNew(label: 'Location', value: 'Mansoura, DK'),
            TextFieldNew(label: 'Industry', value: 'Product Design'),
            const SizedBox(height: 32),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFF1F3F6),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'EMAIL NOTIFICATIONS',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 12),
                  NotificationTile(
                    icon: Icons.shopping_bag_outlined,
                    title: 'New job Matches',
                    value: _newMatches,
                    onChanged: (val) => setState(() => _newMatches = val),
                  ),
                  NotificationTile(
                    icon: Icons.chat_bubble_outline,
                    title: 'Direct Messages',
                    value: _directMessages,
                    onChanged: (val) => setState(() => _directMessages = val),
                  ),
                  NotificationTile(
                    icon: Icons.verified_outlined,
                    title: 'Product Updates',
                    value: _productUpdates,
                    onChanged: (val) => setState(() => _productUpdates = val),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3244E6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text(
                  'Save Profile',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Discard Changes',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}
