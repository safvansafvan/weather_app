import 'package:flutter/material.dart';

class CustomColor {
  static Color kblack = Colors.black;
  static Color kwhite = Colors.white;
}

class CustomFuction {
  static TextStyle textStyleFuction(
      {required double size, required FontWeight fontWeight, Color? color}) {
    return TextStyle(fontWeight: fontWeight, color: color, fontSize: size);
  }
}
