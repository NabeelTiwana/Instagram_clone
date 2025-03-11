import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  // Categories List
  final List<Map<String, dynamic>> items = [
    {'icon': Icons.live_tv_outlined, 'text': 'IGTV'},
    {'icon': Icons.shopping_bag, 'text': 'Shop'},
    {'icon': null, 'text': 'Style'},
    {'icon': null, 'text': 'Sports'},
    {'icon': null, 'text': 'Auto'},
  ];

  // Images List for Grid
  final List<String> images = [
    'assets/images/boy.jpg',
    'assets/images/boy1.jpg',
    'assets/images/boy2.jpg',
    'assets/images/boy3.jpg',
    'assets/images/boy4.jpg',
    'assets/images/boy5.jpg',
    'assets/images/boy6.jpg',
    'assets/images/boy7.jpg',
    'assets/images/boy8.jpg',
    'assets/images/boy9.jpg',
    'assets/images/boy10.jpg',
    'assets/images/boy.jpg',
    'assets/images/boy1.jpg',
    'assets/images/boy2.jpg',
    'assets/images/boy3.jpg',
    'assets/images/boy4.jpg',
    'assets/images/boy5.jpg',
    'assets/images/boy6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),

          // Search Bar Row
          Row(
            children: [
              const SizedBox(width: 10),
              Container(
                height: 36,
                width: 335,
                decoration: BoxDecoration(
                  color: const Color(0XFF262626),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search, color: Color(0XFF8E8E93)),
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0XFF8E8E93),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Image.asset('assets/images/Live.png'),
            ],
          ),

          const SizedBox(height: 10),

          // Horizontal Scrollable Categories
          SizedBox(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    width: 75,
                    height: 32,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white12),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (items[index]['icon'] != null)
                          Icon(
                            items[index]['icon'],
                            color: Colors.white,
                            size: 15,
                          ),
                        if (items[index]['icon'] != null)
                          const SizedBox(width: 5),
                        Text(
                          items[index]['text'],
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0XFFF9F9F9),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          //const SizedBox(height: 10),

          // **Quilted GridView (Instagram-style Staggered Grid)**
          Expanded(
            child: GridView.custom(
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 4,
                //mainAxisSpacing: 4,
                // crossAxisSpacing: 4,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: [
                  QuiltedGridTile(2, 2),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 2),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) => ClipRRect(
                  // borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    images[index % images.length], // Looping images
                    fit: BoxFit.cover,
                  ),
                ),
                childCount: images.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
