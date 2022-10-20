part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {}

class WeatherError extends WeatherState {}
