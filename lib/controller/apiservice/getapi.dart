import 'package:dio/dio.dart';
import 'package:weather_app/controller/apiservice/string.dart';

class ApiSerivice {
  final dio = Dio();
  Future GetWeather({required double lat, required double long}) async {
    final respose = await dio.get(apiUrl(lat, long));

    try {} catch (e) {}
  }
}
