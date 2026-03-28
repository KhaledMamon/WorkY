// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:work_y/Authentication/login.dart';
// import 'package:login/login.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String mail = "";

  Widget? email(String email) {
    if (email.isEmpty) {
      return null;
    } else if (email.isNotEmpty && email.contains('@gmail.com')) {
      return null;
    } else {
      return Row(
        children: const [
          Icon(Icons.error_outline, color: Colors.red, size: 16),
          SizedBox(width: 5),
          Text(
            'please enter email',
            style: TextStyle(
              color: Colors.red,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(236, 237, 255, 1),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15, left: 15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Forgot Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                "Enter the email address registered with your account. We'll send you a link to reset your password.",
              ),
            ),

            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: Text(
                'Email Address',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5, left: 15.0, right: 15.0),
              child: TextFormField(
                onFieldSubmitted: (value) {
                  setState(() {
                    mail = value;
                  });
                },

                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(20, 67, 195, 1),
                      width: 2.0,
                    ),
                  ),
                  // labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  hintText: "Example@gmail.com",
                  helper: email(mail),
                ),
              ),
            ),
            SizedBox(height: 40),

            // SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(1, 50, 184, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Remembered password?",
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: Text(
                    'Login to your account',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color.fromRGBO(20, 67, 195, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
