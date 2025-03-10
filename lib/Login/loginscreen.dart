import 'package:flutter/material.dart';
import 'package:instagram_clone/Home/homescreen.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';

import '../Signup/signupscreen.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customImage(imgurl: "Instagram Logo.png"),
            SizedBox(height: 25),
            Uihelper.customTextField(
              controller: emailController,
              text: 'Email',
              tohide: false,
              textinputtype: TextInputType.emailAddress,
              prefixIcon: Icon(Icons.email, color: Colors.white),
              suffixIcon: Icon(Icons.visibility, color: Colors.white),
            ),
            Uihelper.customTextField(
              controller: passwordController,
              text: 'Password',
              tohide: true,
              textinputtype: TextInputType.number,
              prefixIcon: Icon(Icons.lock, color: Colors.white),
              suffixIcon: Icon(Icons.visibility_off, color: Colors.white),
            ),
            Uihelper.customTextButton(
              text: "Forgot password?",
              onpress: () {},
              fontSize: 16,
            ),
            Uihelper.customElevatedButton(
              text: 'Log in',
              onpress: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              fontSize: 20,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/facebook Icon.png"),
                Uihelper.customTextButton(
                  text: "Log in with Facebook",
                  onpress: () {},
                  fontSize: 16,
                  padding: EdgeInsets.only(right: 8, left: 8),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 150, height: 1, color: Colors.white12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "or",
                    style: TextStyle(color: Colors.white24, fontSize: 20),
                  ),
                ),
                Container(width: 150, height: 1, color: Colors.white12),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account?", style: TextStyle(fontSize: 16)),
                Uihelper.customTextButton(
                  text: "Sign up.",
                  onpress: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  fontSize: 16,
                  padding: EdgeInsets.only(left: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
