import 'package:json_annotation/json_annotation.dart';

part 'hourly_weather_model.g.dart';

@JsonSerializable()
class HourlyWeatherModel {
  final String symbol;
  final int temperature;
  final DateTime time;

  HourlyWeatherModel({
    required this.symbol,
    required this.temperature,
    required this.time,
  });
}
