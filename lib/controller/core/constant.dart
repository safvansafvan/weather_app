import 'package:flutter/material.dart';

class CustomColor {
  static Color kblack = Colors.black;
  static Color kwhite = Colors.white;
  static Color kpurple = Colors.deepPurple;
  static Color kgrey = Colors.grey;
}

class CustomFuction {
  static TextStyle textStyleFuction(
      {required double size, required FontWeight fontWeight, Color? color}) {
    return TextStyle(fontWeight: fontWeight, color: color, fontSize: size);
  }
}

class CustomHeights {
  static commonHeight(context) {
    Size size = MediaQuery.of(context).size;
    var height = SizedBox(
      height: size.height * 0.03,
    );
    return height;
  }
}

class CustomWidth {
  static commonwidth(context) {
    Size size = MediaQuery.of(context).size;
    var height = SizedBox(
      width: size.height * 0.01,
    );
    return height;
  }
}
