import 'package:flutter/material.dart';
import 'package:weather_app/controller/core/constant.dart';

class MoreDetailsAboutWheater extends StatelessWidget {
  const MoreDetailsAboutWheater({super.key});

  @override
  Widget build(BuildContext context) {
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
          ],
        ),
        CustomHeights.minHeight(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 20,
              width: 60,
              child: Text('20km/h', textAlign: TextAlign.center),
            ),
            SizedBox(
              height: 20,
              width: 60,
              child: Text('20km/h', textAlign: TextAlign.center),
            ),
            SizedBox(
              height: 20,
              width: 60,
              child: Text('20km/h', textAlign: TextAlign.center),
            )
          ],
        )
      ],
    );
  }
}
