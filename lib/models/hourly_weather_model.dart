import 'package:json_annotation/json_annotation.dart';

part 'hourly_weather_model.g.dart';

@JsonSerializable()
class HourlyForecastModel {
  String? symbol;
  int? temperature;
  int? time;

  HourlyForecastModel({
    required this.symbol,
    required this.temperature,
    required this.time,
  });

  factory HourlyForecastModel.fromJson(Map<String, dynamic> json) =>
      _$HourlyForecastModelFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyForecastModelToJson(this);
}
