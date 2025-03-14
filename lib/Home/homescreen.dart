import 'package:flutter/material.dart';
import 'package:instagram_clone/ChatScreen/chatscreen.dart';

class HomeScreen extends StatelessWidget {
  var arrContent = [
    {'image': 'assets/images/boy.jpg', 'title': 'Nabeel'},
    {'image': 'assets/images/boy1.jpg', 'title': 'Aisha'},
    {'image': 'assets/images/boy2.jpg', 'title': 'Ahmed'},
    {'image': 'assets/images/boy3.jpg', 'title': 'Sara'},
    {'image': 'assets/images/boy4.jpg', 'title': 'Hassan'},
    {'image': 'assets/images/boy5.jpg', 'title': 'Fatima'},
    {'image': 'assets/images/boy6.jpg', 'title': 'Ali'},
    {'image': 'assets/images/boy7.jpg', 'title': 'Maryam'},
    {'image': 'assets/images/boy8.jpg', 'title': 'Bilal'},
    {'image': 'assets/images/boy9.jpg', 'title': 'Zainab'},
    {'image': 'assets/images/boy10.jpg', 'title': 'Omar'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: Color(0XFF121212),
        leading: Image.asset("assets/images/Camera Icon.png"),
        title: Image.asset(
          'assets/images/Instagram Logo.png',
          fit: BoxFit.cover,
          width: 105,
          height: 28,
        ),
        actions: [
          Image.asset("assets/images/IGTV.png"),
          SizedBox(width: 15),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
              icon: Image.asset('assets/images/Messanger.png'),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5),
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: arrContent.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          arrContent[index]['image'].toString(),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        arrContent[index]['title'].toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/boy.jpg'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nabeel',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text('Lahore , Pakistan', style: TextStyle(fontSize: 14)),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(Icons.more_horiz),
              ),
            ],
          ),
          SizedBox(height: 3),
          Container(
            width: double.infinity,
            height: 420,
            child: Image.asset('assets/images/boy4.jpg', fit: BoxFit.cover),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset('assets/images/Like.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                  child: Image.asset('assets/images/Comment.png'),
                ),
                Image.asset('assets/images/Messanger.png'),
                Spacer(),
                Image.asset('assets/images/Save.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/images/boy.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Liked by'),
                ),
                Text(' Nabeel', style: TextStyle(fontWeight: FontWeight.bold)),
                Text(' and'),
                Text(
                  ' 44,686 others',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Text(' Nabeel', style: TextStyle(fontWeight: FontWeight.bold)),
                Text(' The game in Japan was amazing and I want '),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(' to share some photos'),
          ),
        ],
      ),
    );
  }
}
