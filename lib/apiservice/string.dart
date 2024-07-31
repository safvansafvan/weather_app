const String apiKey = '';

String apiUrl(double lat, double long) {
  String url =
      "https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$long&appid=$apiKey&units=metric&exclude=minutely";
  return url;
}
