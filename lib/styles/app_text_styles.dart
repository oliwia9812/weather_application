import 'package:flutter/material.dart';
import 'package:weather/styles/app_colors.dart';

abstract class AppTextStyles {
  static const TextStyle titleXLarge = TextStyle(
    color: AppColors.white,
    fontSize: 64.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle titleLarge = TextStyle(
    color: AppColors.white,
    fontSize: 32.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle titleMedium = TextStyle(
    color: AppColors.white,
    fontSize: 24.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle subtitle = TextStyle(
    color: AppColors.secondary,
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle cardTitleTime = TextStyle(
    color: AppColors.secondary,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle cardTitleMaxTemp = TextStyle(
    color: AppColors.white,
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle cardTitleMinTemp = TextStyle(
    color: AppColors.secondary,
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
  );
}
