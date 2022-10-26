// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyForecastModel _$DailyForecastModelFromJson(Map<String, dynamic> json) =>
    DailyForecastModel(
      date: json['date'] as String?,
      symbol: json['symbol'] as String?,
      maxTemp: json['maxTemp'] as int?,
      minTemp: json['minTemp'] as int?,
    );

Map<String, dynamic> _$DailyForecastModelToJson(DailyForecastModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'maxTemp': instance.maxTemp,
      'minTemp': instance.minTemp,
      'symbol': instance.symbol,
    };
