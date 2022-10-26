import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/bloc/bloc/weather_bloc.dart';
import 'package:weather/styles/app_colors.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.secondary,
          ),
          hintText: 'Enter city',
          focusColor: Colors.amber,
          hintStyle: const TextStyle(
            color: AppColors.secondary,
          ),
          contentPadding: EdgeInsets.zero,
          filled: true,
          fillColor: AppColors.primary,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              width: 0,
            ),
          ),
        ),
        style: const TextStyle(
          color: AppColors.white,
        ),
        textInputAction: TextInputAction.go,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter city name';
          }
          return null;
        },
        onFieldSubmitted: (value) {
          if (_formKey.currentState!.validate()) {
            BlocProvider.of<WeatherBloc>(context)
                .add(GetWeatherBySearch(cityName: value));
          }
        },
      ),
    );
  }
}
