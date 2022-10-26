import 'package:json_annotation/json_annotation.dart';

part 'hourly_weather.g.dart';

@JsonSerializable()
class HourlyWeather {
  List<ForecastHourly>? forecast;

  HourlyWeather({
    required this.forecast,
  });

  factory HourlyWeather.fromJson(Map<String, dynamic> json) =>
      _$HourlyWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyWeatherToJson(this);
}

@JsonSerializable()
class ForecastHourly {
  String? time;
  String? symbol;
  String? symbolPhrase;
  double? temperature;
  int? feelsLikeTemp;
  double? windSpeed;
  double? windGust;
  int? relHumidity;
  double? dewPoint;
  int? windDir;
  String? windDirString;
  int? precipProb;
  double? precipAccum;
  double? snowAccum;
  int? cloudiness;
  int? thunderProb;
  int? uvIndex;
  double? pressure;
  int? visibility;
  String? precipType;
  int? solarRadiation;

  ForecastHourly({
    this.time,
    this.symbol,
    this.symbolPhrase,
    this.temperature,
    this.feelsLikeTemp,
    this.windSpeed,
    this.windGust,
    this.relHumidity,
    this.dewPoint,
    this.windDir,
    this.windDirString,
    this.precipProb,
    this.precipAccum,
    this.snowAccum,
    this.cloudiness,
    this.thunderProb,
    this.uvIndex,
    this.pressure,
    this.visibility,
    this.precipType,
    this.solarRadiation,
  });

  factory ForecastHourly.fromJson(Map<String, dynamic> json) =>
      _$ForecastHourlyFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastHourlyToJson(this);
}
