// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyWeather _$HourlyWeatherFromJson(Map<String, dynamic> json) =>
    HourlyWeather(
      symbol: json['symbol'] as String,
      temperature: json['temperature'] as int,
      time: json['time'] as String,
    );

Map<String, dynamic> _$HourlyWeatherToJson(HourlyWeather instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'temperature': instance.temperature,
      'time': instance.time,
    };
