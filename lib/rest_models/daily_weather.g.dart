// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyWeather _$DailyWeatherFromJson(Map<String, dynamic> json) => DailyWeather(
      forecast: (json['forecast'] as List<dynamic>?)
          ?.map((e) => ForecastDaily.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DailyWeatherToJson(DailyWeather instance) =>
    <String, dynamic>{
      'forecast': instance.forecast,
    };

ForecastDaily _$ForecastDailyFromJson(Map<String, dynamic> json) =>
    ForecastDaily(
      date: json['date'] as String?,
      symbol: json['symbol'] as String?,
      symbolPhrase: json['symbolPhrase'] as String?,
      maxTemp: (json['maxTemp'] as num?)?.toDouble(),
      minTemp: (json['minTemp'] as num?)?.toDouble(),
      maxFeelsLikeTemp: (json['maxFeelsLikeTemp'] as num?)?.toDouble(),
      minFeelsLikeTemp: (json['minFeelsLikeTemp'] as num?)?.toDouble(),
      maxRelHumidity: json['maxRelHumidity'] as int?,
      minRelHumidity: json['minRelHumidity'] as int?,
      maxDewPoint: (json['maxDewPoint'] as num?)?.toDouble(),
      minDewPoint: (json['minDewPoint'] as num?)?.toDouble(),
      precipAccum: (json['precipAccum'] as num?)?.toDouble(),
      snowAccum: (json['snowAccum'] as num?)?.toDouble(),
      maxWindSpeed: (json['maxWindSpeed'] as num?)?.toDouble(),
      windDir: json['windDir'] as int?,
      maxWindGust: (json['maxWindGust'] as num?)?.toDouble(),
      precipProb: json['precipProb'] as int?,
      cloudiness: json['cloudiness'] as int?,
      sunrise: json['sunrise'] as String?,
      sunset: json['sunset'] as String?,
      sunriseEpoch: json['sunriseEpoch'] as int?,
      sunsetEpoch: json['sunsetEpoch'] as int?,
      moonrise: json['moonrise'] as String?,
      moonset: json['moonset'] as String?,
      moonPhase: json['moonPhase'] as int?,
      uvIndex: json['uvIndex'] as int?,
      minVisibility: json['minVisibility'] as int?,
      pressure: (json['pressure'] as num?)?.toDouble(),
      confidence: json['confidence'] as String?,
      solarRadiationSum: json['solarRadiationSum'] as int?,
    );

Map<String, dynamic> _$ForecastDailyToJson(ForecastDaily instance) =>
    <String, dynamic>{
      'date': instance.date,
      'symbol': instance.symbol,
      'symbolPhrase': instance.symbolPhrase,
      'maxTemp': instance.maxTemp,
      'minTemp': instance.minTemp,
      'maxFeelsLikeTemp': instance.maxFeelsLikeTemp,
      'minFeelsLikeTemp': instance.minFeelsLikeTemp,
      'maxRelHumidity': instance.maxRelHumidity,
      'minRelHumidity': instance.minRelHumidity,
      'maxDewPoint': instance.maxDewPoint,
      'minDewPoint': instance.minDewPoint,
      'precipAccum': instance.precipAccum,
      'snowAccum': instance.snowAccum,
      'maxWindSpeed': instance.maxWindSpeed,
      'windDir': instance.windDir,
      'maxWindGust': instance.maxWindGust,
      'precipProb': instance.precipProb,
      'cloudiness': instance.cloudiness,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'sunriseEpoch': instance.sunriseEpoch,
      'sunsetEpoch': instance.sunsetEpoch,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moonPhase': instance.moonPhase,
      'uvIndex': instance.uvIndex,
      'minVisibility': instance.minVisibility,
      'pressure': instance.pressure,
      'confidence': instance.confidence,
      'solarRadiationSum': instance.solarRadiationSum,
    };
