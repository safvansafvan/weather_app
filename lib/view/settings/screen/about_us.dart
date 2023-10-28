import 'package:flutter/material.dart';
import 'package:weather_app/controller/core/constant.dart';
import 'package:weather_app/view/settings/widget/app_bar.dart';
import 'package:weather_app/view/settings/widget/common_heading.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context: context, title: 'About Us'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Welcome to Wether App, your trusted source for up-to-date weather information and forecasts. At Techys, we are dedicated to providing you with accurate, reliable, and user-friendly weather services.'),
              CustomHeights.commonHeight(context),
              commonHeading(title: 'Our Mission'),
              CustomHeights.minHeight(context),
              const Text(
                  'Our mission is to empower individuals and communities by offering a comprehensive and easy-to-use weather application that helps you make informed decisions based on real-time and forecasted weather conditions. We believe that access to precise weather data is essential for planning daily activities, making travel decisions, and staying safe in various weather situations.'),
              CustomHeights.commonHeight(context),
              commonHeading(title: 'What We Offer'),
              CustomHeights.minHeight(context),
              const Text(
                  'Accurate Weather Forecasts: Our team of meteorologists and data experts work tirelessly to ensure that the weather information you receive is as precise as possible. We combine the latest technology with extensive meteorological knowledge to provide you with reliable forecasts.'),
              CustomHeights.minHeight(context),
              const Text(
                  'User-Friendly Interface: We understand the importance of a simple and intuitive user experience. Our application is designed to be accessible to all, ensuring that you can access the information you need with ease.'),
              CustomHeights.minHeight(context),
              const Text(
                  'Current Location Tracking: Our app uses your device s location services to provide localized weather data, so you always have the most relevant information at your fingertips.'),
              CustomHeights.minHeight(context),
              const Text(
                  'Customized Alerts: Stay informed and prepared with customized weather alerts for your location. Receive notifications for severe weather conditions, so you can take the necessary precautions.'),
              CustomHeights.minHeight(context),
              const Text(
                  'Regular Updates: We are committed to continuously improving our application. We release updates and enhancements regularly to keep our users satisfied with the latest features and the best user experience.'),
              CustomHeights.commonHeight(context),
              commonHeading(title: 'Get in Touch'),
              CustomHeights.minHeight(context),
              const Text(
                  'Your feedback is essential in helping us improve our application. If you have any questions, suggestions, or concerns, please don t hesitate to contact us at [sajusajuptl@gmail.com]. We value your input and aim to make Wether App the best weather app for you.'),
              CustomHeights.minHeight(context),
              const Text(
                  'Thank you for choosing Wether App as your go-to source for weather information. We are here to serve you, rain or shine!')
            ],
          ),
        ),
      ),
    );
  }
}
