import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/controller/core/constant.dart';
import 'package:weather_app/controller/getx/globel_controller.dart';
import 'package:weather_app/model/hourly_weather_model.dart';

class WethersHourly extends StatelessWidget {
  const WethersHourly(
      {super.key, required this.weatherDataHourly, required this.screenSize});
  final WeatherDataHourly weatherDataHourly;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          alignment: Alignment.topCenter,
          child: Text(
            'Today',
            style: CustomFuction.textStyleFuction(
                size: 18, fontWeight: FontWeight.bold),
          ),
        ),
        hourlyList()
      ],
    );
  }

  Widget hourlyList() {
    final cardInd = GlobelController().getIndex();
    return Container(
      height: screenSize.height * 0.18,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Obx(
            () => GestureDetector(
                onTap: () {
                  cardInd.value = index;
                },
                child: Container(
                  width: screenSize.width * 0.23,
                  margin: const EdgeInsets.only(left: 20, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(
                              0.5,
                              0,
                            ),
                            blurRadius: 30,
                            spreadRadius: 1,
                            color: CustomColor.dividerLine.withAlpha(200)),
                      ],
                      gradient: cardInd.value == index
                          ? const LinearGradient(colors: [
                              CustomColor.gradientColorOne,
                              CustomColor.gradientColorTwo
                            ])
                          : null),
                  child: hourlyDetails(
                      temp: weatherDataHourly.hourlyModel[index].temp!.floor(),
                      timeStamp:
                          weatherDataHourly.hourlyModel[index].dt!.floor(),
                      weatherIcon: weatherDataHourly
                          .hourlyModel[index].weather![0].icon!,
                      index: index,
                      cardInd: cardInd.toInt()),
                )),
          );
        },
        itemCount: weatherDataHourly.hourlyModel.length > 12
            ? 12
            : weatherDataHourly.hourlyModel.length,
      ),
    );
  }

  Widget hourlyDetails(
      {required int temp,
      required int timeStamp,
      required String weatherIcon,
      required int index,
      required cardInd}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            getTime(timeStamp),
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color:
                    index == cardInd ? CustomColor.kwhite : CustomColor.kblack),
          ),
        ),
        Container(
            margin: const EdgeInsets.all(5),
            child: Image.asset('assets/weather/$weatherIcon.png',
                height: 40, width: 40)),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            '$temp°',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color:
                    index == cardInd ? CustomColor.kwhite : CustomColor.kblack),
          ),
        ),
      ],
    );
  }
}

String getTime(final timeStamp) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timeStamp * 1250);
  String x = DateFormat.jm().format(dateTime);
  return x;
}
