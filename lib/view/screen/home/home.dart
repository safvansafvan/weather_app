import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/controller/core/constant.dart';
import 'package:weather_app/controller/getx/globel_controller.dart';
import 'package:weather_app/view/screen/home/widgets/daily_weather.dart';
import 'package:weather_app/view/screen/home/widgets/more_details_widget.dart';
import 'package:weather_app/view/screen/home/widgets/weathers_hourly.dart';
import 'package:weather_app/view/screen/splash/splash.dart';

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
                            HeaderWidget(),
                            CustomHeights.commonHeight(context),
                            Container(
                              height: 200,
                              width: 300,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(colors: [
                                    Color.fromARGB(255, 124, 91, 181),
                                    Color.fromARGB(255, 74, 152, 216)
                                  ]),
                                  borderRadius: BorderRadius.circular(30),
                                  border:
                                      Border.all(color: Colors.blue, width: 2)),
                              child: Stack(
                                children: [
                                  Center(
                                    child: Text(
                                      '22',
                                      style: CustomFuction.textStyleFuction(
                                          size: 100,
                                          fontWeight: FontWeight.bold,
                                          color: CustomColor.kwhite),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  String city = '';
  DateTime dateTime = DateTime.now();
  final GlobelController controller =
      Get.put(GlobelController(), permanent: true);
  @override
  void initState() {
    getPlace(controller.getLatitude().value, controller.getLongitude().value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                city,
                style: CustomFuction.textStyleFuction(
                  size: 23,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.kpurple,
                ),
              )
            ],
          ),
        ),
        Text(
          DateFormat.yMMMd().format(dateTime),
          style: CustomFuction.textStyleFuction(
              size: 14, fontWeight: FontWeight.w500, color: CustomColor.kblack),
        ),
      ],
    );
  }

  Future<void> getPlace(double lat, double log) async {
    List<Placemark> placeMark = await placemarkFromCoordinates(lat, log);
    Placemark place = placeMark[0];
    setState(() {
      city = place.locality!;
    });
  }
}
