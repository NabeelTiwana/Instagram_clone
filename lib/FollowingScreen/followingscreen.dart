import 'package:flutter/material.dart';

class FollowingScreen extends StatelessWidget {
  var arrContent=[
    {
      'img':'assets/images/boy.jpg',
      'text':'karennne liked your photo. 1h',
      'lastimg':'assets/images/Rectangle1.png'
    },
    {
      'img':'assets/images/boy.jpg',
      'text':'karennne liked your photo. 1h',
      'lastimg':'assets/images/Rectangle1.png'
    },
    {
      'img':'assets/images/boy.jpg',
      'text':'karennne liked your photo. 1h',
      'lastimg':'assets/images/Rectangle1.png'
    },
    {
      'img':'assets/images/boy.jpg',
      'text':'karennne liked your photo. 1h',
      'lastimg':'assets/images/Rectangle1.png'
    },
    {
      'img':'assets/images/boy.jpg',
      'text':'karennne liked your photo. 1h',
      'lastimg':'assets/images/Rectangle1.png'
    },
    {
      'img':'assets/images/boy.jpg',
      'text':'karennne liked your photo. 1h',
      'lastimg':'assets/images/Rectangle1.png'
    },
    {
      'img':'assets/images/boy.jpg',
      'text':'karennne liked your photo. 1h',
      'lastimg':'assets/images/Rectangle1.png'
    },
    {
      'img':'assets/images/boy.jpg',
      'text':'karennne liked your photo. 1h',
      'lastimg':'assets/images/Rectangle1.png'
    },
    {
      'img':'assets/images/boy.jpg',
      'text':'karennne liked your photo. 1h',
      'lastimg':'assets/images/Rectangle1.png'
    },
    {
      'img':'assets/images/boy.jpg',
      'text':'karennne liked your photo. 1h',
      'lastimg':'assets/images/Rectangle1.png'
    },
    {
      'img':'assets/images/boy.jpg',
      'text':'karennne liked your photo. 1h',
      'lastimg':'assets/images/Rectangle1.png'
    },
  ];

  FollowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: arrContent.length,
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(arrContent[index]['img'].toString()),
            ),
            title: Text(arrContent[index]['text'].toString()),
            trailing: Image.asset(arrContent[index]['lastimg'].toString()),
          ),
        );
      }),
    );
  }
}
