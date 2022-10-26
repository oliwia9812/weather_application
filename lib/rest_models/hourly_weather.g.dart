// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyWeather _$HourlyWeatherFromJson(Map<String, dynamic> json) =>
    HourlyWeather(
      forecast: (json['forecast'] as List<dynamic>?)
          ?.map((e) => ForecastHourly.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HourlyWeatherToJson(HourlyWeather instance) =>
    <String, dynamic>{
      'forecast': instance.forecast,
    };

ForecastHourly _$ForecastHourlyFromJson(Map<String, dynamic> json) =>
    ForecastHourly(
      time: json['time'] as String?,
      symbol: json['symbol'] as String?,
      symbolPhrase: json['symbolPhrase'] as String?,
      temperature: (json['temperature'] as num?)?.toDouble(),
      feelsLikeTemp: json['feelsLikeTemp'] as int?,
      windSpeed: (json['windSpeed'] as num?)?.toDouble(),
      windGust: (json['windGust'] as num?)?.toDouble(),
      relHumidity: json['relHumidity'] as int?,
      dewPoint: (json['dewPoint'] as num?)?.toDouble(),
      windDir: json['windDir'] as int?,
      windDirString: json['windDirString'] as String?,
      precipProb: json['precipProb'] as int?,
      precipAccum: (json['precipAccum'] as num?)?.toDouble(),
      snowAccum: (json['snowAccum'] as num?)?.toDouble(),
      cloudiness: json['cloudiness'] as int?,
      thunderProb: json['thunderProb'] as int?,
      uvIndex: json['uvIndex'] as int?,
      pressure: (json['pressure'] as num?)?.toDouble(),
      visibility: json['visibility'] as int?,
      precipType: json['precipType'] as String?,
      solarRadiation: json['solarRadiation'] as int?,
    );

Map<String, dynamic> _$ForecastHourlyToJson(ForecastHourly instance) =>
    <String, dynamic>{
      'time': instance.time,
      'symbol': instance.symbol,
      'symbolPhrase': instance.symbolPhrase,
      'temperature': instance.temperature,
      'feelsLikeTemp': instance.feelsLikeTemp,
      'windSpeed': instance.windSpeed,
      'windGust': instance.windGust,
      'relHumidity': instance.relHumidity,
      'dewPoint': instance.dewPoint,
      'windDir': instance.windDir,
      'windDirString': instance.windDirString,
      'precipProb': instance.precipProb,
      'precipAccum': instance.precipAccum,
      'snowAccum': instance.snowAccum,
      'cloudiness': instance.cloudiness,
      'thunderProb': instance.thunderProb,
      'uvIndex': instance.uvIndex,
      'pressure': instance.pressure,
      'visibility': instance.visibility,
      'precipType': instance.precipType,
      'solarRadiation': instance.solarRadiation,
    };
