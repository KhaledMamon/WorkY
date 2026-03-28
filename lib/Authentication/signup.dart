import 'package:flutter/material.dart';
import 'package:work_y/Authentication/login.dart';
import 'package:work_y/Authentication/verify_email.dart';
// import 'package:login/login.dart';
// import 'package:login/verify_email.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool unpass = true;
  bool agree = false;
  String password = "";
  String confpassword = "";
  String mail = "";

  Widget? notvalid(String pass) {
    if (pass.isEmpty) {
      return null;
    } else if (pass.length >= 6 && pass == "1234567") {
      return null;
    } else {
      return Row(
        children: const [
          Icon(Icons.error_outline, color: Colors.red, size: 16),
          SizedBox(width: 5),
          Text(
            'please enter correct password',
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

  IconData? suffixIcon() {
    if (unpass) {
      return Icons.visibility_off_outlined;
    } else {
      return Icons.visibility;
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
            Center(
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(236, 237, 255, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.g_mobiledata, size: 30, color: Colors.blue),
                    Text(
                      "Sign Up with Google",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),

            Row(
              children: [
                const Expanded(child: Divider(color: Colors.grey, indent: 20)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "or sign Up with",
                    style: TextStyle(color: Colors.grey[500], fontSize: 12),
                  ),
                ),
                const Expanded(
                  child: Divider(color: Colors.grey, endIndent: 20),
                ),
              ],
            ),

            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: Text(
                'Full Name',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5, left: 15.0, right: 15.0),
              child: TextFormField(
                onChanged: (value) {
                  // print("onSubmitted: $value");
                },

                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(20, 67, 195, 1),
                      width: 2.0,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  hintText: "donald trump",
                ),
              ),
            ),
            SizedBox(height: 20),

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
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value) {
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
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  hintText: "Example@gmail.com",
                  helper: email(mail),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 15.0, right: 15.0),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },

                keyboardType: TextInputType.visiblePassword,
                obscureText: unpass,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(20, 67, 195, 1),
                      width: 2.0,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        unpass = !unpass;
                      });
                    },
                    icon: Icon(suffixIcon()),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  // notvalid(password),
                  hintText: "************",
                  helper: notvalid(password),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Confirm Password',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 15.0, right: 15.0),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    confpassword = value;
                  });
                },

                keyboardType: TextInputType.visiblePassword,
                obscureText: unpass,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(20, 67, 195, 1),
                      width: 2.0,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        unpass = !unpass;
                      });
                    },
                    icon: Icon(suffixIcon()),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  // notvalid(password),
                  hintText: "************",
                  helper: notvalid(password),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 15),
                Checkbox(
                  activeColor: Color.fromRGBO(2, 158, 31, 1),
                  value: agree,
                  onChanged: (bol) {
                    setState(() {
                      agree = bol!;
                    });
                  },
                ),

                Text(
                  'By Creating an Account, i accept Hiring Hub \n terms of  Use and Privacy Policy',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const VerifyEmail(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(20, 67, 195, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  'Sign Up',
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
                  "Have an Account?",
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: Text(
                    'Sign in here',
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
