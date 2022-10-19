import 'package:json_annotation/json_annotation.dart';

part 'current_weather.g.dart';

@JsonSerializable()
class CurrentWeather {
  final int feelsLikeTemp;
  final String symbol;
  final String symbolPhrase;
  final int temperature;
  final String time;

  CurrentWeather({
    required this.feelsLikeTemp,
    required this.symbol,
    required this.symbolPhrase,
    required this.temperature,
    required this.time,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);
}
