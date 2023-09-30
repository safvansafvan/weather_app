import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/controller/core/constant.dart';
import 'package:weather_app/view/screen/home/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await navigateHome(context);
    });
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'Weather App',
                  style: CustomFuction.textStyleFuction(
                    size: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Lottie.asset(
                'assets/splashloading.json',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future navigateHome(context) async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }
}
