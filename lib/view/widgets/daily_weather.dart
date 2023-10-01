import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/controller/core/constant.dart';

class DailyWeather extends StatelessWidget {
  const DailyWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: CustomColor.dividerLine.withAlpha(150),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(bottom: 10),
            child: Text(
              "Next Days",
              style: CustomFuction.textStyleFuction(
                  size: 17,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.kblack),
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 60,
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 80,
                            child: Text(
                              getDay(10),
                              style: CustomFuction.textStyleFuction(
                                  size: 13,
                                  fontWeight: FontWeight.w300,
                                  color: CustomColor.kblack),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/icons/clouds.png'),
                          ),
                          Text('37/28')
                        ],
                      ),
                    )
                  ],
                );
              },
              itemCount: 7,
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
