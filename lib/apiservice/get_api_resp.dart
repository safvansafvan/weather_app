import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:weather_app/apiservice/string.dart';
import 'package:weather_app/model/current_weatherdata.dart';
import 'package:weather_app/model/daily_weather_model.dart';
import 'package:weather_app/model/hourly_weather_model.dart';
import 'package:weather_app/model/weather_data_model.dart';

class ApiService {
  WeatherData? wheatherData;

  Future getWeatherData(lat, lon) async {
    try {
      var response = await http.get(Uri.parse(apiUrl(lat, lon)));
      var jsonBody = jsonDecode(response.body);
      wheatherData = WeatherData(
        CurrentWeatherData.fromJson(jsonBody),
        WeatherDataHourly.fromJson(jsonBody),
        WeatherDataDaily.fromJson(jsonBody),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return wheatherData!;
      } else {
        log('Server Failure');
      }
    } catch (e) {
      log('Client Failure --- ${e.toString()}');
    }
  }
}
