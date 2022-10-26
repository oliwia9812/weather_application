import 'package:weather/models/current_weather_model.dart';
import 'package:weather/models/daily_weather_model.dart';
import 'package:weather/models/hourly_weather_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel {
  String? cityName;
  CurrentWeatherModel? currentWeatherModel;
  List<DailyForecastModel>? dailyForecastModel;
  List<HourlyForecastModel>? hourlyForecastModel;

  WeatherModel({
    required this.cityName,
    required this.currentWeatherModel,
    required this.dailyForecastModel,
    required this.hourlyForecastModel,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}
