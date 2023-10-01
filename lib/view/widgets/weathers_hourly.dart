import 'package:flutter/material.dart';
import 'package:weather_app/controller/core/constant.dart';

class WethersHourly extends StatelessWidget {
  const WethersHourly({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          alignment: Alignment.topCenter,
          child: Text(
            'Today',
            style: CustomFuction.textStyleFuction(
                size: 18, fontWeight: FontWeight.w500),
          ),
        ),
        hourlyList()
      ],
    );
  }
}

Widget hourlyList() {
  return Container(
    height: 150,
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
            child: Container(
          width: 90,
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
                    color: CustomColor.dividerLine.withAlpha(150)),
              ],
              gradient: const LinearGradient(colors: [
                CustomColor.firstGradientColor,
                CustomColor.secondGradientColor
              ])),
          child: hourlyDetails(),
        ));
      },
      itemCount: 20,
    ),
  );
}

Widget hourlyDetails() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text('12:30'),
      ),
      Container(
          margin: const EdgeInsets.all(5),
          child: Image.asset('assets/icons/clouds.png', height: 40, width: 40)),
      Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text('29'),
      ),
    ],
  );
}
