import 'package:json_annotation/json_annotation.dart';

part 'hourly_weather.g.dart';

@JsonSerializable()
class HourlyWeather {
  final String symbol;
  final int temperature;
  final String time;

  HourlyWeather({
    required this.symbol,
    required this.temperature,
    required this.time,
  });

  factory HourlyWeather.fromJson(Map<String, dynamic> json) =>
      _$HourlyWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyWeatherToJson(this);
}
