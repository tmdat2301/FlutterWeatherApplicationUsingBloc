// import 'package:flutter_weather_application/dataset.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import 'repositories/weather.dart';

abstract class WeatherRepository {
  Future<Weather> fetchWeather(String cityName);
}
var cityJSON;

class FakeWeatherRepository implements WeatherRepository{
  Future<Weather> fetchWeather(String cityName) async{
    if (cityJSON == null) {
    String link =
        "https://raw.githubusercontent.com/dr5hn/countries-states-cities-database/master/cities.json";
    var response = await http.get(Uri.parse(link));
    if (response.statusCode == 200) {
      cityJSON = json.decode(response.body);
    }
  }
  for (var i = 0; i < cityJSON.length; i++) {
    if (cityJSON[i]["name"].toString().toLowerCase() ==
        cityName.toLowerCase()) {
      return Weather(
          cityName: cityJSON[i]["name"].toString());
          
    }
  }
  return null;
  }
}
