import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/controller/apiservice/string.dart';

class ApiSerivice {
  final dio = Dio();
  Future getWeather({required double lat, required double long}) async {
    try {
      final respose = await dio.get(apiUrl(lat, long));
      if (respose.statusCode == 200 || respose.statusCode == 201) {
        log("success${respose.statusCode}");
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
