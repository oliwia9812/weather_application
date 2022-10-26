// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) => WeatherModel(
      cityName: json['cityName'] as String?,
      currentWeatherModel: json['currentWeatherModel'] == null
          ? null
          : CurrentWeatherModel.fromJson(
              json['currentWeatherModel'] as Map<String, dynamic>),
      dailyForecastModel: (json['dailyForecastModel'] as List<dynamic>?)
          ?.map((e) => DailyForecastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hourlyForecastModel: (json['hourlyForecastModel'] as List<dynamic>?)
          ?.map((e) => HourlyForecastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'cityName': instance.cityName,
      'currentWeatherModel': instance.currentWeatherModel,
      'dailyForecastModel': instance.dailyForecastModel,
      'hourlyForecastModel': instance.hourlyForecastModel,
    };
