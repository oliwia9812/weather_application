import 'package:weather/rest_models/current_weather.dart';
import 'package:weather/rest_models/daily_weather.dart';
import 'package:weather/rest_models/hourly_weather.dart';

abstract class WeatherRepository {
  Future<List<HourlyWeather>>? fetchHourlyWeather();
  Future<List<DailyWeather>>? fetchDailyWeather();
  Future<CurrentWeather>? fetchCurrentWeather();
  Future<void>? searchLocation({required String location});
}
