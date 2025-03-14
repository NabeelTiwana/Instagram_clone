import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  final List<Map<String, dynamic>> chatList = [
    {
      'image': 'assets/images/boy.jpg',
      'name': 'Nabeel',
      'mesg': 'Alhumdulillah',
      'time': '10:30 AM',
      'icon': IconButton(
        onPressed: () {},
        icon: Image.asset('assets/images/Picture.png'),
      ),
    },
    {
      'image': 'assets/images/boy1.jpg',
      'name': 'Ali',
      'mesg': 'Salam!',
      'time': '09:15 AM',
      'icon': IconButton(
        onPressed: () {},
        icon: Image.asset('assets/images/Picture.png'),
      ),
    },
    {
      'image': 'assets/images/boy2.jpg',
      'name': 'Ahmed',
      'mesg': 'How are you?',
      'time': 'Yesterday',
      'icon': IconButton(
        onPressed: () {},
        icon: Image.asset('assets/images/Picture.png'),
      ),
    },
    {
      'image': 'assets/images/boy3.jpg',
      'name': 'Sara',
      'mesg': 'Let’s meet today!',
      'time': '08:00 PM',
      'icon': IconButton(
        onPressed: () {},
        icon: Image.asset('assets/images/Picture.png'),
      ),
    },
    {
      'image': 'assets/images/boy4.jpg',
      'name': 'Zara',
      'mesg': 'See you soon!',
      'time': '02:45 PM',
      'icon': IconButton(
        onPressed: () {},
        icon: Image.asset('assets/images/Picture.png'),
      ),
    },
    {
      'image': 'assets/images/boy5.jpg',
      'name': 'Nabeel',
      'mesg': 'Alhamdulillah!',
      'time': 'Sunday',
      'icon': IconButton(
        onPressed: () {},
        icon: Image.asset('assets/images/Picture.png'),
      ),
    },
    {
      'image': 'assets/images/boy6.jpg',
      'name': 'Bilal',
      'mesg': 'Good morning!',
      'time': '07:30 AM',
      'icon': IconButton(
        onPressed: () {},
        icon: Image.asset('assets/images/Picture.png'),
      ),
    },
    {
      'image': 'assets/images/boy7.jpg',
      'name': 'Fatima',
      'mesg': 'How’s your day?',
      'time': 'Yesterday',
      'icon': IconButton(
        onPressed: () {},
        icon: Image.asset('assets/images/Picture.png'),
      ),
    },
    {
      'image': 'assets/images/boy8.jpg',
      'name': 'Hassan',
      'mesg': 'Let’s go out!',
      'time': '06:15 PM',
      'icon': IconButton(
        onPressed: () {},
        icon: Image.asset('assets/images/Picture.png'),
      ),
    },
    {
      'image': 'assets/images/boy9.jpg',
      'name': 'Ayesha',
      'mesg': 'Take care!',
      'time': '03:20 PM',
      'icon': IconButton(
        onPressed: () {},
        icon: Image.asset('assets/images/Picture.png'),
      ),
    },
    {
      'image': 'assets/images/boy10.jpg',
      'name': 'Usman',
      'mesg': 'I am busy right now.',
      'time': 'Yesterday',
      'icon': IconButton(
        onPressed: () {},
        icon: Image.asset('assets/images/Picture.png'),
      ),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: Color(0XFF121212),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(CupertinoIcons.back)),
        title: Text(
          'Nabeel',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.plus)),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10),
            child: Container(
              width: 380,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0XFF262626),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: searchController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Color(0XFF8E8E93),
                    fontWeight: FontWeight.normal,
                  ),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  // Padding for spacing
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      chatList[index]['image'].toString(),
                    ),
                  ),
                  title: Text(
                    chatList[index]['name'].toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    chatList[index]['mesg'].toString(),
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  trailing: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        chatList[index]['time'].toString(),
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      SizedBox(width: 5),
                      chatList[index]['icon'], // Icon button
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(color: Color(0XFF121212)),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera_alt, size: 25, color: Colors.blue),
                  SizedBox(width: 5),
                  Text(
                    "Camera",
                    style: TextStyle(color: Colors.blue, fontSize: 15,fontWeight: FontWeight.w500),
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
