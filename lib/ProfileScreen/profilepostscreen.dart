import 'package:flutter/material.dart';

class ProfilePostScreen extends StatelessWidget {
  final List<String> imageList = [
    'assets/images/boy.jpg',
    'assets/images/boy1.jpg', // Fixed typo: 'boy1..jpg' to 'boy1.jpg'
    'assets/images/boy2.jpg',
    'assets/images/boy3.jpg',
    'assets/images/boy4.jpg',
    'assets/images/boy5.jpg',
    'assets/images/boy6.jpg',
    'assets/images/boy7.jpg',
    'assets/images/boy8.jpg',
    'assets/images/boy9.jpg',
    'assets/images/boy10.jpg',
  ];

   ProfilePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Added padding for better aesthetics
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1.0, // Increased spacing for better visuals
            mainAxisSpacing: 1.0, // Added main axis spacing
            childAspectRatio: 1.0, // Ensures square tiles (optional, adjust as needed)
          ),
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Image.asset(
              imageList[index], // Removed .toString() since it's already a String
              fit: BoxFit.cover, // Ensures the image fills the grid tile
              errorBuilder: (context, error, stackTrace) {
                return const Center(
                  child: Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 40,
                  ),
                ); // Shows an error icon if the image fails to load
              },
            );
          },
        ),
      ),
    );
  }
}
