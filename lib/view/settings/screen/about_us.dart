import 'package:flutter/material.dart';
import 'package:weather_app/view/settings/widget/app_bar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context: context, title: 'About Us'),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Weather App',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text('Developed By Muhammed Safvan',
                style: TextStyle(fontStyle: FontStyle.italic)),
            Text('Version : 1.1.0'),
          ],
        ),
      ),
    );
  }
}
