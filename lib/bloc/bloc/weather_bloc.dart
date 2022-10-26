import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:weather/models/current_weather_model.dart';
import 'package:weather/models/daily_weather_model.dart';
import 'package:weather/models/hourly_weather_model.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/repository/weather_repository_impl.dart';
import 'package:weather/rest_models/current_weather.dart';
import 'package:weather/rest_models/daily_weather.dart';
import 'package:weather/rest_models/hourly_weather.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:weather/mappers/weather_mappers.dart';
import 'package:weather/rest_models/location.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherRepositoryImpl weatherRepositoryImpl;
  WeatherBloc({required this.weatherRepositoryImpl}) : super(WeatherLoading()) {
    on<GetWeatherByCurrentLocation>(_onGetWeatherByCurrentLocation);
    on<GetWeatherBySearch>(_onGetWeatherBySearch);
  }

  List<DailyForecastModel> weatherForecast = [];
  late Position _currentPosition;

  Future<void> _onGetWeatherByCurrentLocation(
    GetWeatherByCurrentLocation event,
    Emitter<WeatherState> emit,
  ) async {
    emit(WeatherLoading());

    _currentPosition = await _determinePosition();

    final String currentLong = _currentPosition.longitude.toString();
    final String currentLat = _currentPosition.latitude.toString();

    emit(
      WeatherLoaded(
        weatherModel: WeatherModel(
          cityName: await _getCityName(
            long: double.parse(currentLong),
            lat: double.parse(currentLat),
          ),
          currentWeatherModel: await _getCurrentWeatherData(
            long: currentLong,
            lat: currentLat,
          ),
          dailyForecastModel: await _getDailyForecast(
            long: currentLong,
            lat: currentLat,
          ),
          hourlyForecastModel: await _getHourlyForecast(
            long: currentLong,
            lat: currentLat,
          ),
        ),
      ),
    );
  }

  Future<void> _onGetWeatherBySearch(
      GetWeatherBySearch event, Emitter<WeatherState> emit) async {
    emit(WeatherLoading());

    SearchLocation? searchedLocation =
        await weatherRepositoryImpl.searchLocation(location: event.cityName);

    if (searchedLocation!.locations!.isEmpty) {
      emit(WeatherNotFound());
      return;
    }

    final String searchedLat = searchedLocation.locations![0].lat.toString();
    final String searchLong = searchedLocation.locations![0].lon.toString();

    emit(
      WeatherLoaded(
        weatherModel: WeatherModel(
          cityName: await _getCityName(
            long: double.parse(searchLong),
            lat: double.parse(searchedLat),
          ),
          currentWeatherModel: await _getCurrentWeatherData(
            long: searchLong,
            lat: searchedLat,
          ),
          dailyForecastModel: await _getDailyForecast(
            long: searchLong,
            lat: searchedLat,
          ),
          hourlyForecastModel: await _getHourlyForecast(
            long: searchLong,
            lat: searchedLat,
          ),
        ),
      ),
    );
  }

  Future<String?> _getCityName(
      {required double long, required double lat}) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);
    Placemark placemark = placemarks[0];
    return placemark.subAdministrativeArea == ''
        ? placemark.locality
        : placemark.subAdministrativeArea;
  }

  Future<CurrentWeatherModel?> _getCurrentWeatherData(
      {required String long, required String lat}) async {
    CurrentWeather? currentWeather =
        await weatherRepositoryImpl.fetchCurrentWeather(
      lat: lat,
      long: long,
    );

    return currentWeather?.mapToCurrentWeatherModel();
  }

  Future<List<DailyForecastModel>?> _getDailyForecast(
      {required String long, required String lat}) async {
    List<DailyForecastModel> dailyForecastModelList = [];

    DailyWeather? dailyWeather = await weatherRepositoryImpl.fetchDailyWeather(
      lat: lat,
      long: long,
    );

    List<ForecastDaily>? dailyList = dailyWeather!.forecast;

    if (dailyList != null) {
      for (ForecastDaily dailyForecast in dailyList) {
        weatherForecast.add(dailyForecast.mapToDailyWeatherModel());
        dailyForecastModelList.add(dailyForecast.mapToDailyWeatherModel());
      }
    }

    return dailyForecastModelList;
  }

  Future<List<HourlyForecastModel>?> _getHourlyForecast(
      {required String long, required String lat}) async {
    List<HourlyForecastModel> hourlyForecastModelList = [];
    HourlyWeather? hourlyWeather =
        await weatherRepositoryImpl.fetchHourlyWeather(
      long: long,
      lat: lat,
    );

    List<ForecastHourly>? hourlyList = hourlyWeather!.forecast;

    if (hourlyList != null) {
      for (ForecastHourly forecastHourly in hourlyList) {
        hourlyForecastModelList.add(forecastHourly.mapToHourlyWeatherModel());
      }
    }

    return hourlyForecastModelList;
  }
}

Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }
  return await Geolocator.getCurrentPosition();
}
