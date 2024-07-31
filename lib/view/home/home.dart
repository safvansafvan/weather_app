import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/core/constant.dart';
import 'package:weather_app/controller/getx/globel_controller.dart';
import 'package:weather_app/view/widgets/comfort_level_widget.dart';
import 'package:weather_app/view/widgets/current_weather_widget.dart';
import 'package:weather_app/view/widgets/daily_weather.dart';
import 'package:weather_app/view/widgets/header_widget.dart';
import 'package:weather_app/view/widgets/weathers_hourly.dart';
import 'package:weather_app/view/widgets/loading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final GlobelController controller =
        Get.put(GlobelController(), permanent: true);

    return RefreshIndicator(
      onRefresh: () async {
        controller.isLoading.value = true;
        await controller.getLocation();
      },
      child: Scaffold(
        body: Obx(() => (controller.checkLoading().isTrue)
            ? Center(child: loading())
            : controller.errorMessage.isNotEmpty
                ? Center(
                    child: Text(
                      "${controller.errorMessage.value} Or\n App -> Permissions -> Location Permission Always",
                      style: TextStyle(color: Colors.red[500]),
                      textAlign: TextAlign.center,
                    ),
                  )
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
                                  controller.getData().getCurrentWeather(),
                              screenSize: screenSize,
                            ),
                            CustomHeights.commonHeight(context),
                            WethersHourly(
                              weatherDataHourly:
                                  controller.getData().getHourlyWeather(),
                              screenSize: screenSize,
                            ),
                            CustomHeights.commonHeight(context),
                            DailyWeather(
                              weatherDataDaily:
                                  controller.getData().getDailyWeather(),
                              screenSize: screenSize,
                            ),
                            ComfortLevelWidget(
                              currentWeatherData:
                                  controller.getData().getCurrentWeather(),
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
      ),
    );
  }
}
