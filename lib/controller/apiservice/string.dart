const String apiKey = 'd99d638ba389b1f127ee850bc533432b';

String apiUrl(double lat, double long) {
  String url =
      'https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$long&exclude=minutely&appid=$apiKey';
  return url;
}
