const String apiKey = 'c40feb8da01004f2b11ec099f8cd0600';

String apiUrl(double lat, double long) {
  String url =
      "https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$long&appid=$apiKey&units=metric&exclude=minutely";
  return url;
}
