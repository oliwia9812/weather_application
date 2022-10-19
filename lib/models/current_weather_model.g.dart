// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeatherModel _$CurrentWeatherModelFromJson(Map<String, dynamic> json) =>
    CurrentWeatherModel(
      feelsLikeTemp: json['feelsLikeTemp'] as int,
      symbol: json['symbol'] as String,
      symbolPhrase: json['symbolPhrase'] as String,
      temperature: json['temperature'] as int,
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$CurrentWeatherModelToJson(
        CurrentWeatherModel instance) =>
    <String, dynamic>{
      'feelsLikeTemp': instance.feelsLikeTemp,
      'symbol': instance.symbol,
      'symbolPhrase': instance.symbolPhrase,
      'temperature': instance.temperature,
      'time': instance.time.toIso8601String(),
    };
