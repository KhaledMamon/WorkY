import 'package:flutter/material.dart';
import 'package:work_y/Chat/Chat_Widgets/chat_item.dart';
import 'package:work_y/Profile/profile.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF3244E6);

    return Scaffold(
      backgroundColor: const Color(0xFFF3F5F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'WorkY',
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => const Profile()));
            },
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuDDka4xNpbG1l6PvFRpm0lpsZ8xZHAJ0hQY2tDIAoUU7oiqbPi6lAYUXDeTr2nxqL1AbosnCgeRkTf8vwaJhz1PUzOgYL-qFcqrREIn2BH8n7Op3t2MvG3dfin5z4tHhxaq8BkG0q0G_BYEqUQBTChJoIdhYEmvbfWKXDIcBbfHg54iHlytLL2LVIRYKX_SPvLl4gYEG_qLKT1QIef82Tl4Ud45FaIKvs2K2kls4hU9fHPSdkpO1aZ9dH9isHE29f8DWhqXR54WF2Ab',
                ),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Messages',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.edit, size: 16, color: Colors.white),
                  label: const Text(
                    'New Chat',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              onTap: () {},
              decoration: InputDecoration(
                hintText: 'Search conversations...',
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                ChatItem(
                  imagb:
                      'https://cdn.pixabay.com/photo/2016/11/14/17/39/group-1824145_1280.png',
                  imag:
                      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  name: 'devolopers Team',
                  msg: 'The project brief looks great!',
                  time: '2M AGO',
                  unread: true,
                  color: primaryColor,
                  isGroup: true,
                ),
                ChatItem(
                  imag:
                      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  name: 'Marcus Thorne',
                  msg: 'I\'ve attached the final wireframes.',
                  time: '1H AGO',
                  unread: false,
                  color: primaryColor,
                ),
                ChatItem(
                  imagb:
                      'https://cdn.pixabay.com/photo/2016/11/14/17/39/group-1824145_1280.png',
                  imag:
                      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  name: 'Design Team',
                  msg: 'Alex: Let\'s finalize the brand.',
                  time: '4H AGO',
                  unread: false,
                  color: primaryColor,
                  isGroup: true,
                ),
                ChatItem(
                  imag:
                      'https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.jpg?s=1024x1024&w=is&k=20&c=iGtRKCTRSvPVl3eOIpzzse5SvQFfImkV0TZuFh-74ps=',
                  name: 'Elena Rodriguez',
                  msg: 'Thanks for the quick turnaround.',
                  time: 'YESTERDAY',
                  unread: false,
                  color: primaryColor,
                ),

                ChatItem(
                  imag:
                      'https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.jpg?s=1024x1024&w=is&k=20&c=iGtRKCTRSvPVl3eOIpzzse5SvQFfImkV0TZuFh-74ps=',
                  name: 'Sarah Jensen',
                  msg: 'The project brief looks great!',
                  time: '2M AGO',
                  unread: true,
                  color: primaryColor,
                ),
                ChatItem(
                  imag:
                      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  name: 'Marcus Thorne',
                  msg: 'I\'ve attached the final wireframes.',
                  time: '1H AGO',
                  unread: false,
                  color: primaryColor,
                ),
                ChatItem(
                  imagb:
                      'https://cdn.pixabay.com/photo/2016/11/14/17/39/group-1824145_1280.png',
                  imag:
                      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  name: 'backend Team',
                  msg: 'Alex: Let\'s finalize the brand.',
                  time: '4H AGO',
                  unread: false,
                  color: primaryColor,
                  isGroup: true,
                ),
                ChatItem(
                  imag:
                      'https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.jpg?s=1024x1024&w=is&k=20&c=iGtRKCTRSvPVl3eOIpzzse5SvQFfImkV0TZuFh-74ps=',
                  name: 'Elena Rodriguez',
                  msg: 'Thanks for the quick turnaround.',
                  time: 'YESTERDAY',
                  unread: false,
                  color: primaryColor,
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 1, // إحنا حالياً في صفحة الرسائل
      //   type: BottomNavigationBarType.fixed,
      //   selectedItemColor: primaryColor,
      //   unselectedItemColor: Colors.grey,
      //   onTap: (index) {
      //     // التنقل بناءً على الزرار المختار
      //     switch (index) {
      //       case 0:
      //         //  NAVIGATION - صفحة HOME
      //         print("Navigate to HOME");
      //         break;
      //       case 1:
      //         print("Already on MESSAGES");
      //         break;
      //       case 2:
      //         //  NAVIGATION - صفحة CONTRACTS
      //         print("Navigate to CONTRACTS");
      //         break;
      //       case 3:
      //         //  NAVIGATION - صفحة ME (Profile)
      //         print("Navigate to ME Screen");
      //         break;
      //     }
      //   },
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       label: 'HOME',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.chat_bubble),
      //       label: 'MESSAGES',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.description_outlined),
      //       label: 'CONTRACTS',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_outline),
      //       label: 'ME',
      //     ),
      //   ],
      // ),
    );
  }
}
