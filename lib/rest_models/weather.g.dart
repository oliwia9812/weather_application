// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      currentWeather: CurrentWeather.fromJson(
          json['currentWeather'] as Map<String, dynamic>),
      dailyWeather:
          ForecastDaily.fromJson(json['dailyWeather'] as Map<String, dynamic>),
      hourlyWeather: ForecastHourly.fromJson(
          json['hourlyWeather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'currentWeather': instance.currentWeather,
      'dailyWeather': instance.dailyWeather,
      'hourlyWeather': instance.hourlyWeather,
    };
