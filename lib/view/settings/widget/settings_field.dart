import 'package:flutter/material.dart';
import 'package:weather_app/controller/core/constant.dart';
import 'package:weather_app/view/settings/screen/about_us.dart';
import 'package:weather_app/view/settings/screen/privacy_and_policy.dart';
import 'package:weather_app/view/settings/screen/terms_conditions.dart';

class SettingsFieldWidget extends StatelessWidget {
  const SettingsFieldWidget(
      {super.key,
      required this.title,
      this.about = false,
      this.privacy = false,
      this.terms = false});
  final String title;
  final bool privacy;
  final bool terms;
  final bool about;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        onTap: () {
          if (privacy == true) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PrivacyAndPolicy()));
          } else if (terms == true) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TermsAndConditions()));
          } else if (about == true) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutUs(),
                ));
          }
        },
        title: Text(
          title,
          style: CustomFuction.textStyleFuction(
              size: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
