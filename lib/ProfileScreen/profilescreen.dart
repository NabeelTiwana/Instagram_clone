import 'package:flutter/material.dart';
import 'package:instagram_clone/ProfileScreen/profilepostscreen.dart';
import 'package:instagram_clone/ProfileScreen/tagsscreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFF121212),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lock, size: 14),
              SizedBox(width: 2),
              Text(
                "Nabeel",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
        ),
        body: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/boy.jpg'),
                ),

                Column(
                  children: [
                    Text(
                      '54',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '834',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '162',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nabeel",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Digital goodies designer @pixsellz",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Everything is designed.",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: 390,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.grey.shade800),
                  ),
                ),
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade700),
                      ),
                      child: Icon(Icons.add, size: 35),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "New",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade700),
                      ),
                      child: Image.asset("assets/images/friend.png"),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Friends",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade700),
                      ),
                      child: Image.asset("assets/images/sport.png"),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Sport",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade700),
                      ),
                      child: Image.asset("assets/images/design.png"),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Design",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 70,
              child: AppBar(
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.grid_on_sharp,
                        color: Colors.grey,
                        size: 35,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.person_pin_outlined,
                        color: Colors.grey,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(children: [ProfilePostScreen(), TagsScreen()]),
            ),
          ],
        ),
      ),
    );
  }
}
