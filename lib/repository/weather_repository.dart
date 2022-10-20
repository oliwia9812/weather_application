import 'package:dio/dio.dart';
import 'package:weather/repository/weather_repository_impl.dart';
import 'package:weather/rest_models/hourly_weather.dart';
import 'package:weather/rest_models/daily_weather.dart';
import 'package:weather/rest_models/current_weather.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final Dio dio;

  WeatherRepositoryImpl({required this.dio});

  @override
  Future<CurrentWeather>? fetchCurrentWeather() async {
    final Response response = await dio
        .get('https://foreca-weather.p.rapidapi.com/current/102643743');

    print(response);
    throw UnimplementedError();
  }

  @override
  Future<List<DailyWeather>>? fetchDailyWeather() {
    // TODO: implement fetchDailyWeather
    throw UnimplementedError();
  }

  @override
  Future<List<HourlyWeather>>? fetchHourlyWeather() {
    // TODO: implement fetchHourlyWeather
    throw UnimplementedError();
  }

  @override
  Future<void>? searchLocation({required String location}) async {
    final Response response = await dio
        .get('https://foreca-weather.p.rapidapi.com/location/search/warsaw');
    print(response.data);
    throw UnimplementedError();
  }
}
