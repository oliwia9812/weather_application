import 'package:json_annotation/json_annotation.dart';

part 'current_weather_model.g.dart';

@JsonSerializable()
class CurrentWeatherModel {
  int? feelsLikeTemp;
  String? symbol;
  String? symbolPhrase;
  int? temperature;
  DateTime? time;

  CurrentWeatherModel({
    required this.feelsLikeTemp,
    required this.symbol,
    required this.symbolPhrase,
    required this.temperature,
    required this.time,
  });

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherModelToJson(this);
}
