import 'package:json_annotation/json_annotation.dart';

part 'current_weather.g.dart';

@JsonSerializable()
class CurrentWeather {
  Current? current;

  CurrentWeather({
    this.current,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);
}

@JsonSerializable()
class Current {
  String? time;
  String? symbol;
  String? symbolPhrase;
  double? temperature;
  double? feelsLikeTemp;
  int? relHumidity;
  double? dewPoint;
  double? windSpeed;
  int? windDir;
  String? windDirString;
  double? windGust;
  num? precipProb;
  num? precipRate;
  int? cloudiness;
  int? thunderProb;
  int? uvIndex;
  double? pressure;
  int? visibility;

  Current({
    this.time,
    this.symbol,
    this.symbolPhrase,
    this.temperature,
    this.feelsLikeTemp,
    this.relHumidity,
    this.dewPoint,
    this.windSpeed,
    this.windDir,
    this.windDirString,
    this.windGust,
    this.precipProb,
    this.precipRate,
    this.cloudiness,
    this.thunderProb,
    this.uvIndex,
    this.pressure,
    this.visibility,
  });

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}
