import 'package:flutter/material.dart';

class CustomColor {
  static Color kblack = Colors.black;
  static Color kwhite = Colors.white;
  static Color kpurple = Colors.deepPurple;
  static Color kgrey = Colors.grey;
  static const colorCard = Color(0xffE9ECF1);
  static const firstGradientColor = Color(0xff408ADE);
  static const secondGradientColor = Color(0xff5286CD);
  static const dividerLine = Color(0xffE4E4EE);
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

  static minHeight(context) {
    Size size = MediaQuery.of(context).size;
    var height = SizedBox(
      height: size.height * 0.01,
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
