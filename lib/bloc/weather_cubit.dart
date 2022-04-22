// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_weather_application/homePage.dart';
import 'package:flutter_weather_application/dataset.dart';
import 'package:flutter_weather_application/model/repositories/weather.dart' as wea;
import 'package:flutter_weather_application/model/weather_repository.dart';
import 'package:flutter_weather_application/dataset.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository _weatherRepository;

  WeatherCubit(
    this._weatherRepository,
  ) : super(WeatherInitial());

  Future<void> getWeather(String cityName) async {
    
    emit(WeatherLoading());
    final weather = await _weatherRepository.fetchWeather(cityName);
    emit(WeatherLoaded(weather));
  }
}
