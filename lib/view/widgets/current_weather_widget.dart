import 'package:flutter/material.dart';
import 'package:weather_app/controller/core/constant.dart';
import 'package:weather_app/model/current_weatherdata.dart';

class CurrentWeatherWidget extends StatelessWidget {
  const CurrentWeatherWidget({super.key, required this.currentWeatherData});
  final CurrentWeatherData currentWeatherData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        currentWeatherContainer(),
        CustomHeights.commonHeight(context),
        moreDetailsWidget(context)
      ],
    );
  }

  Widget currentWeatherContainer() {
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 124, 91, 181),
            Color.fromARGB(255, 74, 152, 216)
          ]),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.blue, width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
              'assets/weather/${currentWeatherData.currentModel.weather![0].icon}.png'),
          const VerticalDivider(
            endIndent: 5,
            indent: 5,
          ),
          Center(
            child: Text(
              "${currentWeatherData.currentModel.temp!.floor()}°",
              style: CustomFuction.textStyleFuction(
                  size: 80,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.kwhite),
            ),
          ),
        ],
      ),
    );
  }

  Widget moreDetailsWidget(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: CustomColor.colorCard,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('assets/icons/windspeed.png'),
            ),
            Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: CustomColor.colorCard,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('assets/icons/clouds.png'),
            ),
            Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: CustomColor.colorCard,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('assets/icons/humidity.png'),
            ),
          ],
        ),
        CustomHeights.minHeight(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 20,
              width: 60,
              child: Text(
                  "${currentWeatherData.currentModel.windSpeed!.floor()} km/h",
                  textAlign: TextAlign.center),
            ),
            SizedBox(
              height: 20,
              width: 60,
              child: Text('${currentWeatherData.currentModel.clouds}%',
                  textAlign: TextAlign.center),
            ),
            SizedBox(
              height: 20,
              width: 60,
              child: Text('${currentWeatherData.currentModel.humidity}%',
                  textAlign: TextAlign.center),
            )
          ],
        )
      ],
    );
  }
}
