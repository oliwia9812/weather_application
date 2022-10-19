// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) =>
    CurrentWeather(
      feelsLikeTemp: json['feelsLikeTemp'] as int,
      symbol: json['symbol'] as String,
      symbolPhrase: json['symbolPhrase'] as String,
      temperature: json['temperature'] as int,
      time: json['time'] as String,
    );

Map<String, dynamic> _$CurrentWeatherToJson(CurrentWeather instance) =>
    <String, dynamic>{
      'feelsLikeTemp': instance.feelsLikeTemp,
      'symbol': instance.symbol,
      'symbolPhrase': instance.symbolPhrase,
      'temperature': instance.temperature,
      'time': instance.time,
    };
