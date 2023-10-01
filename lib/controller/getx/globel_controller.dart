import 'dart:developer';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:weather_app/apiservice/get_api_resp.dart';
import 'package:weather_app/model/weather_data_model.dart';

class GlobelController extends GetxController {
  final RxBool isLoading = true.obs;
  final RxDouble latitude = 0.0.obs;
  final RxDouble longitude = 0.0.obs;
  final RxInt currentIndex = 0.obs;

  RxBool checkLoading() => isLoading;
  RxDouble getLongitude() => longitude;
  RxDouble getLatitude() => latitude;

  final weatherData = WeatherData().obs;
  WeatherData getData() {
    return weatherData.value;
  }

  @override
  void onInit() {
    super.onInit();
    if (isLoading.isTrue) {
      getLocation();
    } else {
      getIndex();
    }
  }

  getLocation() async {
    try {
      bool isLocationEnabled;
      LocationPermission locationPermission;

      isLocationEnabled = await Geolocator.isLocationServiceEnabled();

      if (!isLocationEnabled) {
        throw Exception("Location service is not enabled");
      }

      locationPermission = await Geolocator.checkPermission();

      if (locationPermission == LocationPermission.deniedForever) {
        throw Exception("Location permission is denied forever");
      } else if (locationPermission == LocationPermission.denied) {
        locationPermission = await Geolocator.requestPermission();
        if (locationPermission == LocationPermission.denied) {
          throw Exception("Location permission is denied");
        }
      }

      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      latitude.value = position.latitude;
      longitude.value = position.longitude;

      final weather = await ApiService()
          .getWeatherData(position.latitude, position.longitude);

      if (weather == null) {
        throw Exception("Failed to fetch weather data");
      }

      weatherData.value = weather;
      isLoading.value = false;
    } catch (e) {
      log("Error: $e");
      isLoading.value = false;
    }
  }

  RxInt getIndex() {
    return currentIndex;
  }
}
