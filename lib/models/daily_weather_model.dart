import 'package:json_annotation/json_annotation.dart';

part 'daily_weather_model.g.dart';

@JsonSerializable()
class DailyWeatherModel {
  final DateTime date;
  final int maxTemp;
  final int minTemp;
  final String symbol;

  DailyWeatherModel({
    required this.date,
    required this.symbol,
    required this.maxTemp,
    required this.minTemp,
  });
}
