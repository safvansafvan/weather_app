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
      checkPermision();
    } else {
      getIndex();
    }
  }

  Future checkPermision() async {
    bool isLocationPermission;
    LocationPermission locationPermission;
    isLocationPermission = await Geolocator.isLocationServiceEnabled();
    if (!isLocationPermission) {
      return Future.error('Location service not enabled');
    }
    locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.deniedForever) {
      return Future.error("Location permission is denied forever");
    } else if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        return Future.error("Location permission is denied");
      }
    }
    return Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((value) {
      latitude.value = value.latitude;
      longitude.value = value.longitude;
      return ApiService()
          .getWeather(value.latitude, value.longitude)
          .then((value) {
        weatherData.value = value;
        isLoading.value = false;
      });
    });
  }

  RxInt getIndex() {
    return currentIndex;
  }
}
