import 'package:flutter/material.dart';
import 'package:weather_app/view/settings/widget/app_bar.dart';
import 'package:weather_app/view/settings/widget/settings_field.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context: context, title: "Settings"),
      body: const Column(
        children: [
          SettingsFieldWidget(
            title: 'Privacy And Policy',
            privacy: true,
          ),
          SettingsFieldWidget(
            title: 'Terms And Conditions',
            terms: true,
          ),
          SettingsFieldWidget(
            title: 'About Us',
            about: true,
          ),
          SettingsFieldWidget(
            title: 'Version : 1.0.2',
          )
        ],
      ),
    );
  }
}
