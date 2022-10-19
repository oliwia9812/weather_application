// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyWeatherModel _$HourlyWeatherModelFromJson(Map<String, dynamic> json) =>
    HourlyWeatherModel(
      symbol: json['symbol'] as String,
      temperature: json['temperature'] as int,
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$HourlyWeatherModelToJson(HourlyWeatherModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'temperature': instance.temperature,
      'time': instance.time.toIso8601String(),
    };
