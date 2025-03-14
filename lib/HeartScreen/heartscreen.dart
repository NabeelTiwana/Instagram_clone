import 'package:flutter/material.dart';
import 'package:instagram_clone/FollowingScreen/followingscreen.dart';
import 'package:instagram_clone/YouScreen/youscreen.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,

              tabs: [Tab(text: 'Following'), Tab(text: 'You')]),
        ),
        body: TabBarView(children: [FollowingScreen(), YouScreen()]),
      ),
    );
  }
}
