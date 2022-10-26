import 'package:weather/rest_models/current_weather.dart';
import 'package:weather/rest_models/daily_weather.dart';
import 'package:weather/rest_models/hourly_weather.dart';

abstract class WeatherRepository {
  Future<HourlyWeather>? fetchHourlyWeather({String? long, String? lat});
  Future<DailyWeather>? fetchDailyWeather({String? long, String? lat});
  Future<CurrentWeather>? fetchCurrentWeather({String? long, String? lat});
  Future<void>? searchLocation({required String location});
}
