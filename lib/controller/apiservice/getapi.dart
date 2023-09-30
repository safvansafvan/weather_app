import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/controller/apiservice/string.dart';
import 'package:weather_app/model/current_weatherdata.dart';
import 'package:weather_app/model/daily_weather_model.dart';
import 'package:weather_app/model/hourly_weather_model.dart';
import 'package:weather_app/model/weather_data_model.dart';

class ApiService {
  WeatherData? wheatherData;

  Future getWeather(lat, lon, context) async {
    try {
      var response = await Dio().get((apiUrl(lat, lon)));
      var bodyData = jsonDecode(response.data);
      wheatherData = WeatherData(
        CurrentWeatherData.fromJson(bodyData),
        WeatherDataHourly.fromJson(bodyData),
        WeatherDataDaily.fromJson(bodyData),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return wheatherData!;
      } else {
        log('Server Failure');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please Turn On The Internet'),
          ),
        );
      }
    } catch (e) {
      if (e is DioException) {
        if (e.type == DioExceptionType.connectionError) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('You are not connected to the internet.'),
            ),
          );
        }
      }
    }
  }
}
