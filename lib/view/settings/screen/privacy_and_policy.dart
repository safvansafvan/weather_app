import 'package:flutter/material.dart';
import 'package:weather_app/view/settings/widget/app_bar.dart';

class PrivacyAndPolicy extends StatelessWidget {
  const PrivacyAndPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context: context, title: 'Privacy And Policy'),
    );
  }
}
