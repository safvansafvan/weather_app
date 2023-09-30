class CurrentWeatherData {
  final CurrentModel currentModel;
  CurrentWeatherData({required this.currentModel});

  factory CurrentWeatherData.fromJson(Map<String, dynamic> json) =>
      CurrentWeatherData(currentModel: CurrentModel.fromJson(json["current"]));
}

class CurrentModel {
  double? temp;
  double? uvi;
  double? feelsLike;
  int? humidity;
  int? clouds;
  double? windSpeed;
  List<Weather>? weather;
  int? visibility;

  CurrentModel({
    this.temp,
    this.uvi,
    this.feelsLike,
    this.humidity,
    this.clouds,
    this.windSpeed,
    this.weather,
    this.visibility,
  });

  factory CurrentModel.fromJson(Map<String, dynamic> json) => CurrentModel(
        temp: (json['temp'] as num?)?.toDouble(),
        uvi: (json['uvi'] as num?)?.toDouble(),
        feelsLike: (json['feels_like'] as num?)?.toDouble(),
        humidity: json['humidity'] as int?,
        clouds: json['clouds'] as int?,
        windSpeed: (json['wind_speed'] as num?)?.toDouble(),
        weather: (json['weather'] as List<dynamic>?)
            ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
            .toList(),
        visibility: json['visibility'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'temp': temp,
        'humidity': humidity,
        'clouds': clouds,
        'wind_speed': windSpeed,
        'weather': weather?.map((e) => e.toJson()).toList(),
        'visibility': visibility,
        'feels_like': feelsLike,
        'uvi': uvi,
      };
}

class Weather {
  int? id;
  String? main;
  String? description;
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        id: json['id'] as int?,
        main: json['main'] as String?,
        description: json['description'] as String?,
        icon: json['icon'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'main': main,
        'description': description,
        'icon': icon,
      };
}
