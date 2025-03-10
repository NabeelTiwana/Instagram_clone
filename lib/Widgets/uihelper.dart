import 'package:flutter/material.dart';

class Uihelper {
  static customTextField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    required TextInputType textinputtype,
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0XFF121212),
        border: Border.all(color: Colors.white24),
      ),
      child: TextField(
        controller: controller,
        obscureText: tohide,
        keyboardType: textinputtype,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Color(0XFFFFFFFF),
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10),
          // Left padding for hint text
          prefixIcon: prefixIcon,
          // Prefix icon added
          suffixIcon: suffixIcon, // Suffix icon added
        ),
      ),
    );
  }

  static customImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }

  static customTextButton({
    required String text,
    required VoidCallback onpress,
    double fontSize = 14,
    Color textColor = const Color(0XFF3797EF),
    Color backgroundColor = Colors.transparent,
    EdgeInsets padding = const EdgeInsets.symmetric(
      // vertical: 5,
      horizontal: 35,
    ),
    double borderRaius = 5,
  }) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: onpress,
        style: TextButton.styleFrom(
          padding: padding,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRaius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  static customElevatedButton({
    required String text,
    required VoidCallback onpress,
    double fontSize = 14,
    Color textColor = Colors.white,
    Color backgroundColor = const Color(0XFF3797EF),
    EdgeInsets padding = const EdgeInsets.symmetric(
      vertical: 5,
      horizontal: 35,
    ),
    double borderRadius = 5,
    String? imagePath, // ✅ Optional image parameter
  }) {
    return SizedBox(
      height: 50,
      width: 343,
      child: ElevatedButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(
          padding: padding,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: imagePath != null
            ? Row( // ✅ If image is provided, show Row
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 20, width: 20,color: Colors.white,),
            const SizedBox(width: 8), // Space between image & text
            Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
            : Text( // ✅ If no image, show only text
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

}
