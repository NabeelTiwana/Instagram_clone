import 'package:flutter/material.dart';
import 'package:instagram_clone/Login/loginscreen.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';

class SignupScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController fnameController = TextEditingController();
  TextEditingController unameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Instagram Logo.png'),
            SizedBox(height: 15),
            Text(
              'Sign up to see photos and videos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'from your friends.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Uihelper.customElevatedButton(
              text: 'Log in withFacebook',
              fontSize: 20,
              onpress: () {},
              imagePath: 'assets/images/facebook Icon.png',
            ),
            SizedBox(height: 15),
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
            SizedBox(height: 20),
            Uihelper.customTextField(
              controller: emailController,
              text: 'Phone Number or Email',
              tohide: false,
              textinputtype: TextInputType.emailAddress,
              prefixIcon: Icon(Icons.email, color: Colors.white),
              suffixIcon: Icon(Icons.visibility, color: Colors.white),
            ),
            SizedBox(height: 10),
            Uihelper.customTextField(
              controller: passwordController,
              text: 'Password',
              tohide: true,
              textinputtype: TextInputType.number,
              prefixIcon: Icon(Icons.lock, color: Colors.white),
              suffixIcon: Icon(Icons.visibility_off, color: Colors.white),
            ),
            SizedBox(height: 10),
            Uihelper.customTextField(
              controller: fnameController,
              text: 'FullName',
              tohide: false,
              textinputtype: TextInputType.text,
              prefixIcon: Icon(Icons.person, color: Colors.white),
              suffixIcon: Icon(Icons.visibility, color: Colors.white),
            ),
            SizedBox(height: 10),
            Uihelper.customTextField(
              controller: unameController,
              text: 'UserName',
              tohide: false,
              textinputtype: TextInputType.text,
              prefixIcon: Icon(Icons.person, color: Colors.white),
              suffixIcon: Icon(Icons.visibility, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'People who use our service may have uploaded',
              style: TextStyle(fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'your contact information to Instagram.',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  ' Learn',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              'More',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'By signing up, you agree to our',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  ' Terms ,',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  ' Privacy',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Policy',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(' and', style: TextStyle(fontSize: 16)),
                Text(
                  ' Cookies Policy',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            Uihelper.customElevatedButton(
              text: 'Sign up',
              fontSize: 20,
              onpress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
