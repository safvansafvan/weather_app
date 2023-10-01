import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/core/constant.dart';
import 'package:weather_app/controller/getx/globel_controller.dart';
import 'package:weather_app/view/widgets/current_weather_widget.dart';
import 'package:weather_app/view/widgets/daily_weather.dart';
import 'package:weather_app/view/widgets/header_widget.dart';
import 'package:weather_app/view/widgets/more_details_widget.dart';
import 'package:weather_app/view/widgets/weathers_hourly.dart';
import 'package:weather_app/view/splash/splash.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobelController controller =
        Get.put(GlobelController(), permanent: true);
    return RefreshIndicator(
      onRefresh: () async {
        controller.isLoading.value = true;
        controller.onInit();
      },
      child: Scaffold(
        body: SafeArea(
          child: Obx(
            () => controller.checkLoading().isTrue
                ? const Center(child: SplashScreen())
                : SingleChildScrollView(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 140, 175, 203),
                              Colors.white10
                            ]),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            CustomHeights.commonHeight(context),
                            const HeaderWidget(),
                            CustomHeights.commonHeight(context),
                            CurrentWeatherWidget(
                                currentWeatherData:
                                    controller.getData().getCurrentWeather()),
                            CustomHeights.commonHeight(context),
                            MoreDetailsAboutWheater(),
                            CustomHeights.minHeight(context),
                            WethersHourly(),
                            CustomHeights.commonHeight(context),
                            DailyWeather()
                          ],
                        ),
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
