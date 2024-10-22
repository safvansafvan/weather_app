import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/controller/core/constant.dart';
import 'package:weather_app/model/daily_weather_model.dart';

class DailyWeather extends StatelessWidget {
  const DailyWeather(
      {super.key, required this.weatherDataDaily, required this.screenSize});
  final WeatherDataDaily weatherDataDaily;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height * 0.6,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: CustomColor.dividerLine,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(bottom: 10),
            child: Text(
              "Next Days",
              style: CustomFuction.textStyleFuction(
                  size: 18,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.kblack),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 80,
                            child: Text(
                              getDay(weatherDataDaily.daily[index].dt),
                              style: CustomFuction.textStyleFuction(
                                  size: 14,
                                  fontWeight: FontWeight.w500,
                                  color: CustomColor.kblack),
                            ),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.09,
                            width: screenSize.width * 0.09,
                            child: Image.asset(
                                'assets/weather/${weatherDataDaily.daily[index].weather?[0].icon}.png'),
                          ),
                          Text(
                            '${weatherDataDaily.daily[index].temp!.max}°/${weatherDataDaily.daily[index].temp!.min}°',
                            style: CustomFuction.textStyleFuction(
                                size: 14,
                                fontWeight: FontWeight.w600,
                                color: CustomColor.kblack),
                          )
                        ],
                      ),
                    )
                  ],
                );
              },
              itemCount: weatherDataDaily.daily.length,
            ),
          )
        ],
      ),
    );
  }

  String getDay(final day) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(day * 1000);
    final y = DateFormat('EEE').format(time);
    return y;
  }
}
