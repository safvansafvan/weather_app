import 'package:weather_app/model/current_weatherdata.dart';

class WeatherDataHourly {
  List<HourlyModel> hourlyModel;
  WeatherDataHourly({required this.hourlyModel});

  factory WeatherDataHourly.fromJson(Map<String, dynamic> json) =>
      WeatherDataHourly(
        hourlyModel: List<HourlyModel>.from(
          json['hourly'].map(
            (e) => HourlyModel.fromJson(e),
          ),
        ),
      );
}

class HourlyModel {
  int? dt;
  double? temp;
  int? humidity;
  int? clouds;
  int? visibility;
  double? windSpeed;
  List<Weather>? weather;
  HourlyModel({
    this.dt,
    this.temp,
    this.humidity,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.weather,
  });

  factory HourlyModel.fromJson(Map<String, dynamic> json) => HourlyModel(
        dt: json['dt'] as int?,
        temp: (json['temp'] as num?)?.toDouble(),
        humidity: json['humidity'] as int?,
        clouds: json['clouds'] as int?,
        visibility: json['visibility'] as int?,
        windSpeed: (json['wind_speed'] as num?)?.toDouble(),
        weather: (json['weather'] as List<dynamic>?)
            ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'dt': dt,
        'temp': temp,
        'humidity': humidity,
        'clouds': clouds,
        'visibility': visibility,
        'wind_speed': windSpeed,
        'weather': weather?.map((e) => e.toJson()).toList(),
      };
}
