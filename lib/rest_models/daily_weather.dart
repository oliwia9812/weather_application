import 'package:json_annotation/json_annotation.dart';

part 'daily_weather.g.dart';

@JsonSerializable()
class DailyWeather {
  List<ForecastDaily>? forecast;

  DailyWeather({
    required this.forecast,
  });

  factory DailyWeather.fromJson(Map<String, dynamic> json) =>
      _$DailyWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$DailyWeatherToJson(this);
}

@JsonSerializable()
class ForecastDaily {
  String? date;
  String? symbol;
  String? symbolPhrase;
  double? maxTemp;
  double? minTemp;
  double? maxFeelsLikeTemp;
  double? minFeelsLikeTemp;
  int? maxRelHumidity;
  int? minRelHumidity;
  double? maxDewPoint;
  double? minDewPoint;
  double? precipAccum;
  double? snowAccum;
  double? maxWindSpeed;
  int? windDir;
  double? maxWindGust;
  int? precipProb;
  int? cloudiness;
  String? sunrise;
  String? sunset;
  int? sunriseEpoch;
  int? sunsetEpoch;
  String? moonrise;
  String? moonset;
  int? moonPhase;
  int? uvIndex;
  int? minVisibility;
  double? pressure;
  String? confidence;
  int? solarRadiationSum;

  ForecastDaily(
      {this.date,
      this.symbol,
      this.symbolPhrase,
      this.maxTemp,
      this.minTemp,
      this.maxFeelsLikeTemp,
      this.minFeelsLikeTemp,
      this.maxRelHumidity,
      this.minRelHumidity,
      this.maxDewPoint,
      this.minDewPoint,
      this.precipAccum,
      this.snowAccum,
      this.maxWindSpeed,
      this.windDir,
      this.maxWindGust,
      this.precipProb,
      this.cloudiness,
      this.sunrise,
      this.sunset,
      this.sunriseEpoch,
      this.sunsetEpoch,
      this.moonrise,
      this.moonset,
      this.moonPhase,
      this.uvIndex,
      this.minVisibility,
      this.pressure,
      this.confidence,
      this.solarRadiationSum});

  factory ForecastDaily.fromJson(Map<String, dynamic> json) =>
      _$ForecastDailyFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastDailyToJson(this);
}
