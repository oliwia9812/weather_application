import 'package:json_annotation/json_annotation.dart';
import 'package:weather/rest_models/current_weather.dart';
import 'package:weather/rest_models/daily_weather.dart';
import 'package:weather/rest_models/hourly_weather.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather {
  CurrentWeather currentWeather;
  ForecastDaily dailyWeather;
  ForecastHourly hourlyWeather;

  Weather({
    required this.currentWeather,
    required this.dailyWeather,
    required this.hourlyWeather,
  });

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}
