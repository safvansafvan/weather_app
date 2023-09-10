import 'package:flutter/material.dart';
import 'package:weather_app/controller/core/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color.fromARGB(255, 140, 175, 203), Colors.white10]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CustomHeights.commonHeight(context),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: CustomColor.kpurple,
                        size: 30,
                      ),
                      CustomWidth.commonwidth(context),
                      Text(
                        'Location',
                        style: CustomFuction.textStyleFuction(
                          size: 23,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.kpurple,
                        ),
                      )
                    ],
                  ),
                ),
                Text("  Monday, 1 January 10 : 10",
                    style: CustomFuction.textStyleFuction(
                        size: 14,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.kblack)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
