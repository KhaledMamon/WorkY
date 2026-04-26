import 'package:flutter/material.dart';
import 'package:work_y/Authentication/login.dart';
import 'package:work_y/Chat/active_chat.dart';
import 'package:work_y/Chat/messages.dart';
import 'package:work_y/Job/post_job.dart';
import 'package:work_y/Profile/profile.dart';
import 'Job/job_details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7E8EB),
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
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          TextField(
            onSubmitted: (value) {
              // print("onSubmitted: $value");
            },
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              prefixIcon: const Icon(Icons.search),
              hintText: "Search",
              filled: true,
              fillColor: Color(0xFFF5F6FA),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const JobDetails()),
              );
            },
            child: Text('job details'),
          ),
          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => const PostJob()));
            },
            child: Text('job Post'),
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => const Messages()));
            },
            child: Text('Massages'),
          ),
        ],
      ),
    );
  }
}
