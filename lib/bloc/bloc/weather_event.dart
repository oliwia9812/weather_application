part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent {}

class GetWeatherByCurrentLocation extends WeatherEvent {}

class GetWeatherBySearch extends WeatherEvent {
  final String cityName;

  GetWeatherBySearch({
    required this.cityName,
  });
}
