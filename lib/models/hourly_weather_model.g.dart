// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyForecastModel _$HourlyForecastModelFromJson(Map<String, dynamic> json) =>
    HourlyForecastModel(
      symbol: json['symbol'] as String?,
      temperature: json['temperature'] as int?,
      time: json['time'] as int?,
    );

Map<String, dynamic> _$HourlyForecastModelToJson(
        HourlyForecastModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'temperature': instance.temperature,
      'time': instance.time,
    };
