import 'package:json_annotation/json_annotation.dart';

part 'daily_weather.g.dart';

@JsonSerializable()
class DailyWeather {
  final String date;
  final int maxTemp;
  final int minTemp;
  final String symbol;

  DailyWeather({
    required this.date,
    required this.symbol,
    required this.maxTemp,
    required this.minTemp,
  });

  factory DailyWeather.fromJson(Map<String, dynamic> json) =>
      _$DailyWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$DailyWeatherToJson(this);
}
