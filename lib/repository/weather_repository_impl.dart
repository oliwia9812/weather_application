import 'package:dio/dio.dart';
import 'package:weather/repository/weather_repository.dart';
import 'package:weather/rest_models/hourly_weather.dart';
import 'package:weather/rest_models/daily_weather.dart';
import 'package:weather/rest_models/current_weather.dart';
import 'package:weather/rest_models/location.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final Dio dio;

  WeatherRepositoryImpl({required this.dio});

  @override
  Future<CurrentWeather>? fetchCurrentWeather({
    String? long,
    String? lat,
  }) async {
    try {
      final Response response = await dio
          .get('https://foreca-weather.p.rapidapi.com/current/$long, $lat');
      return CurrentWeather.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<DailyWeather>? fetchDailyWeather({
    String? long,
    String? lat,
  }) async {
    try {
      final Response response = await dio.get(
        'https://foreca-weather.p.rapidapi.com/forecast/daily/$long, $lat',
      );

      return DailyWeather.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<HourlyWeather>? fetchHourlyWeather({
    String? long,
    String? lat,
  }) async {
    try {
      final Response response = await dio.get(
        'https://foreca-weather.p.rapidapi.com/forecast/hourly/$long, $lat',
      );
      return HourlyWeather.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SearchLocation>? searchLocation({required String location}) async {
    try {
      final Response response = await dio.get(
          'https://foreca-weather.p.rapidapi.com/location/search/$location');
      return SearchLocation.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
