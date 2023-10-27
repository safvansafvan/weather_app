import 'package:flutter/material.dart';
import 'package:weather_app/view/settings/widget/app_bar.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context: context, title: 'Terms And Conditions'),
    );
  }
}
