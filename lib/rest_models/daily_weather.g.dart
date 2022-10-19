// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyWeather _$DailyWeatherFromJson(Map<String, dynamic> json) => DailyWeather(
      date: json['date'] as String,
      symbol: json['symbol'] as String,
      maxTemp: json['maxTemp'] as int,
      minTemp: json['minTemp'] as int,
    );

Map<String, dynamic> _$DailyWeatherToJson(DailyWeather instance) =>
    <String, dynamic>{
      'date': instance.date,
      'maxTemp': instance.maxTemp,
      'minTemp': instance.minTemp,
      'symbol': instance.symbol,
    };
