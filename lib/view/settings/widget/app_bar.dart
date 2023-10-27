import 'package:flutter/material.dart';
import 'package:weather_app/controller/core/constant.dart';

AppBar appBarWidget({required BuildContext context, required String title}) {
  return AppBar(
    leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back_ios)),
    title: Text(
      title,
      style:
          CustomFuction.textStyleFuction(size: 18, fontWeight: FontWeight.bold),
    ),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Divider(
        height: 1.0,
        color: Colors.grey[300],
      ),
    ),
  );
}
