import 'package:flutter/material.dart';
import 'package:weather_app/controller/core/constant.dart';
import 'package:weather_app/view/settings/widget/app_bar.dart';
import 'package:weather_app/view/settings/widget/common_heading.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context: context, title: 'Terms And Conditions'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Last Updated: October 27, 2023'),
              const Text(
                  'These terms and conditions ("Terms") govern your use of the Wether App and its services. By using the App, you agree to comply with and be bound by these Terms. If you do not agree with these Terms, please do not use the App.'),
              CustomHeights.commonHeight(context),
              commonHeading(title: '1. Location Data'),
              CustomHeights.minHeight(context),
              const Text(
                  'a. The App collects and uses your current location to provide you with localized weather information. By using the App, you grant us permission to access your device s location services.'),
              CustomHeights.minHeight(context),
              const Text(
                  'b. We will only use your location data for the purpose of providing weather-related services. We will not share your location data with third parties unless required by law or in accordance with our Privacy Policy.'),
              CustomHeights.commonHeight(context),
              commonHeading(title: '2. Privacy'),
              CustomHeights.minHeight(context),
              const Text(
                  'Your use of the App is also governed by our Privacy Policy, which can be found at . The Privacy Policy outlines how we collect, use, and protect your personal information, including location data.'),
              CustomHeights.commonHeight(context),
              commonHeading(title: '3. User Obligations'),
              CustomHeights.minHeight(context),
              const Text(
                  'a. You agree to use the App in compliance with all applicable laws and regulations.'),
              CustomHeights.minHeight(context),
              const Text(
                  'b. You are responsible for maintaining the confidentiality of your account information and for all activities that occur under your account.'),
              CustomHeights.minHeight(context),
              const Text(
                  'c. You must not use the App for any unlawful or prohibited purposes, including, but not limited to, engaging in any form of harassment, distributing viruses, or violating the rights of others.'),
              CustomHeights.commonHeight(context),
              commonHeading(title: '4. Disclaimers'),
              CustomHeights.minHeight(context),
              const Text(
                  'a. The weather information provided by the App is for informational purposes only. We do not guarantee the accuracy or reliability of the information. Weather conditions can change rapidly, and you should exercise caution and judgment when using the App s data.'),
              CustomHeights.minHeight(context),
              const Text(
                  'b. We are not responsible for any loss, damage, or inconvenience caused by reliance on the information provided by the App.'),
              CustomHeights.commonHeight(context),
              commonHeading(title: '5. Changes to the App'),
              CustomHeights.minHeight(context),
              const Text(
                  'We may update, modify, or discontinue the App at any time, with or without notice. We are not liable to you or any third party for any such changes.'),
              CustomHeights.commonHeight(context),
              commonHeading(title: '6. Contact Information'),
              CustomHeights.minHeight(context),
              const Text(
                  'If you have any questions or concerns about these Terms, please contact us at [sajusajuptl@gmail.com].'),
              CustomHeights.minHeight(context),
              const Text(
                  'By using the App, you acknowledge that you have read and understand these Terms and agree to be bound by them. Please review these Terms regularly, as they may be subject to updates and changes.')
            ],
          ),
        ),
      ),
    );
  }
}
