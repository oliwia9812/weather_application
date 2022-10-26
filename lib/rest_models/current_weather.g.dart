// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) =>
    CurrentWeather(
      current: json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentWeatherToJson(CurrentWeather instance) =>
    <String, dynamic>{
      'current': instance.current,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      time: json['time'] as String?,
      symbol: json['symbol'] as String?,
      symbolPhrase: json['symbolPhrase'] as String?,
      temperature: (json['temperature'] as num?)?.toDouble(),
      feelsLikeTemp: (json['feelsLikeTemp'] as num?)?.toDouble(),
      relHumidity: json['relHumidity'] as int?,
      dewPoint: (json['dewPoint'] as num?)?.toDouble(),
      windSpeed: (json['windSpeed'] as num?)?.toDouble(),
      windDir: json['windDir'] as int?,
      windDirString: json['windDirString'] as String?,
      windGust: (json['windGust'] as num?)?.toDouble(),
      precipProb: json['precipProb'] as num?,
      precipRate: json['precipRate'] as num?,
      cloudiness: json['cloudiness'] as int?,
      thunderProb: json['thunderProb'] as int?,
      uvIndex: json['uvIndex'] as int?,
      pressure: (json['pressure'] as num?)?.toDouble(),
      visibility: json['visibility'] as int?,
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'time': instance.time,
      'symbol': instance.symbol,
      'symbolPhrase': instance.symbolPhrase,
      'temperature': instance.temperature,
      'feelsLikeTemp': instance.feelsLikeTemp,
      'relHumidity': instance.relHumidity,
      'dewPoint': instance.dewPoint,
      'windSpeed': instance.windSpeed,
      'windDir': instance.windDir,
      'windDirString': instance.windDirString,
      'windGust': instance.windGust,
      'precipProb': instance.precipProb,
      'precipRate': instance.precipRate,
      'cloudiness': instance.cloudiness,
      'thunderProb': instance.thunderProb,
      'uvIndex': instance.uvIndex,
      'pressure': instance.pressure,
      'visibility': instance.visibility,
    };
