import 'package:flutter/material.dart';
import 'package:work_y/Authentication/login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0E2E8),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: MaterialButton(
          onPressed: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://lh3.googleusercontent.com/aida-public/AB6AXuB7mcV6ZmQPQgVWA4IXxLOA2ftsEQaafSmpeBtD3U2by8HHet76tqcQ4oRb6bHPdtHF1HA7LYOH4Ypfkf73zCkHP3aLTZKA2VX1gxswB4pvB10kQK6utnuz8JE8CD0oiwr7L2Q8jQSZhqQIeS60s1yeQZYmNzClC0yiOxjEmXGtj1NhGkc0AhfDt9ObgVYjrs_yOdjT3Q5GExgo45gluIU8Q5-E8EyTp7LMtasIY7W3RNL2gwMlXxF4yBkeg5xQJ3PsVyP8mV8cvGqs',
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
            child: Text("Login"),
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
        ],
      ),
    );
  }
}
