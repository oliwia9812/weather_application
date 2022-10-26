import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/bloc/bloc/weather_bloc.dart';
import 'package:weather/injector.dart';
import 'package:weather/presentation/home_screen/home_screen.dart';
import 'package:weather/repository/weather_repository_impl.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherBloc(
          weatherRepositoryImpl: Injector().get<WeatherRepositoryImpl>()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
