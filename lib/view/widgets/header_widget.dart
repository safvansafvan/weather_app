import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:share/share.dart';
import 'package:weather_app/controller/core/constant.dart';
import 'package:weather_app/controller/getx/globel_controller.dart';
import 'package:weather_app/view/settings/settings.dart';

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
        CustomHeights.minHeight(context),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Settings(),
                    ));
                  },
                  icon: const Icon(Icons.settings)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.black54,
                    size: 30,
                  ),
                  CustomWidth.commonwidth(context),
                  Text(
                    city,
                    style: CustomFuction.textStyleFuction(
                        size: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () async {
                    await share();
                  },
                  icon: const Icon(Icons.share))
            ],
          ),
        ),
        Text(
          DateFormat.yMMMMEEEEd().format(dateTime),
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

  Future<void> share() async {
    await Share.share('https://www.amazon.com/gp/product/B0CLKVWV3Q');
  }
}
