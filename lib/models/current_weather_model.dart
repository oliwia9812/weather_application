import 'package:json_annotation/json_annotation.dart';

part 'current_weather_model.g.dart';

@JsonSerializable()
class CurrentWeatherModel {
  final int feelsLikeTemp;
  final String symbol;
  final String symbolPhrase;
  final int temperature;
  final DateTime time;

  CurrentWeatherModel({
    required this.feelsLikeTemp,
    required this.symbol,
    required this.symbolPhrase,
    required this.temperature,
    required this.time,
  });
}
