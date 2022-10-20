import 'package:flutter/material.dart';
import 'package:weather/styles/app_colors.dart';

abstract class AppDecorations {
  static ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    shadowColor: Colors.transparent,
    backgroundColor: AppColors.primary,
  );
}
