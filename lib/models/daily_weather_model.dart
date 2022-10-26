import 'package:json_annotation/json_annotation.dart';

part 'daily_weather_model.g.dart';

@JsonSerializable()
class DailyForecastModel {
  String? date;
  int? maxTemp;
  int? minTemp;
  String? symbol;

  DailyForecastModel({
    required this.date,
    required this.symbol,
    required this.maxTemp,
    required this.minTemp,
  });

  factory DailyForecastModel.fromJson(Map<String, dynamic> json) =>
      _$DailyForecastModelFromJson(json);

  Map<String, dynamic> toJson() => _$DailyForecastModelToJson(this);
}
