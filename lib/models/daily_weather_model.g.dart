// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyWeatherModel _$DailyWeatherModelFromJson(Map<String, dynamic> json) =>
    DailyWeatherModel(
      date: DateTime.parse(json['date'] as String),
      symbol: json['symbol'] as String,
      maxTemp: json['maxTemp'] as int,
      minTemp: json['minTemp'] as int,
    );

Map<String, dynamic> _$DailyWeatherModelToJson(DailyWeatherModel instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'maxTemp': instance.maxTemp,
      'minTemp': instance.minTemp,
      'symbol': instance.symbol,
    };
