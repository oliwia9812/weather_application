import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/constants.dart';
import 'package:weather/repository/weather_repository_impl.dart';

class Injector {
  static final GetIt _getIt = GetIt.instance;
  static final Injector _instance = Injector._();

  factory Injector() => _instance;

  Injector._() {
    initDio();
    initWeatherRepository(dio: _getIt.get<Dio>());
  }

  void initDio() {
    final Dio dio = Dio();
    dio.options
      ..baseUrl = "https://foreca-weather.p.rapidapi.com/"
      ..headers = {
        'X-RapidAPI-Key': Constants.apiKey,
        'X-RapidAPI-Host': 'foreca-weather.p.rapidapi.com'
      };

    _getIt.registerSingleton(dio);
  }

  void initWeatherRepository({required Dio dio}) {
    _getIt.registerFactory(() => WeatherRepositoryImpl(dio: dio));
  }

  T get<T extends Object>([
    String? instanceName,
  ]) {
    return _getIt.get<T>(
      instanceName: instanceName,
    );
  }
}
