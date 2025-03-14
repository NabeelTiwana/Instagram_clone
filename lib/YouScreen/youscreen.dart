import 'package:flutter/material.dart';

class YouScreen extends StatelessWidget {
  const YouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 48,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15),
              child: Text(
                "Follow Requests",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0XFFF9F9F9),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "New",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0XFFF9F9F9),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Image.asset("assets/images/Oval1.png"),
                  title: Text(
                    "karennne liked your photo. 1h",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: Color(0XFFF9F9F9),
                    ),
                  ),
                  trailing: Image.asset('assets/images/Rectangle1.png'),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 106,
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "Today",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0XFFF9F9F9),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Image.asset("assets/images/Oval2.png"),
                  title: Text(
                    "kiero_d, zackjohn and 26 others like",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Color(0XFFF9F9F9),
                    ),
                  ),
                  subtitle: Text(
                    "your photo. 3h",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: Color(0XFFF9F9F9),
                    ),
                  ),
                  trailing: Image.asset('assets/images/Rectangle1.png'),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 106,
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "This Week",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0XFFF9F9F9),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Image.asset("assets/images/Oval3.png"),
                  title: Text(
                    "craig_love mentioned you in a",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Color(0XFFF9F9F9),
                    ),
                  ),
                  subtitle: Text(
                    "comment: @jacob_w exactly..",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                      color: Color(0XFFF9F9F9),
                    ),
                  ),
                  trailing: Image.asset('assets/images/Rectangle2.png'),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(height: 10),
                ListTile(
                  leading: Image.asset("assets/images/Oval4.png"),
                  title: Text(
                    "martini_rond started ",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Color(0XFFF9F9F9),
                    ),
                  ),
                  subtitle: Text(
                    "following you. 3d",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                      color: Color(0XFFF9F9F9),
                    ),
                  ),
                  trailing: SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Colors.grey.shade700),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      child: Text(
                        "message",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.black,
            child: Column(
              children: [
                //SizedBox(height: 10),
                ListTile(
                  leading: Image.asset("assets/images/Oval5.png"),
                  title: Text(
                    "maxjacobson started ",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Color(0XFFF9F9F9),
                    ),
                  ),
                  subtitle: Text(
                    "following you. 3d",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                      color: Color(0XFFF9F9F9),
                    ),
                  ),
                  trailing: SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Colors.grey.shade700),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      child: Text(
                        "message",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.black,
              child: Column(
                children: [
                  //SizedBox(height: 10),
                  ListTile(
                    leading: Image.asset("assets/images/Oval6.png"),
                    title: Text(
                      "mis_potter started following ",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                        color: Color(0XFFF9F9F9),
                      ),
                    ),
                    subtitle: Text(
                      "you. 3d",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                        color: Color(0XFFF9F9F9),
                      ),
                    ),
                    trailing: SizedBox(
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.grey.shade700),
                          ),
                          backgroundColor: Colors.blue,
                        ),
                        child: Text(
                          "message",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
