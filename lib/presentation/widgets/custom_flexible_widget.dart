import 'package:flutter/material.dart';
import 'package:weather/styles/app_colors.dart';
import 'package:weather/styles/app_text_styles.dart';

class CustomFlexibleWidget extends StatelessWidget {
  final String icon;
  final String temp;
  final String time;
  final double verticalPadding;

  const CustomFlexibleWidget({
    required this.icon,
    required this.temp,
    required this.time,
    required this.verticalPadding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Card(
        color: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: verticalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                time,
                style: AppTextStyles.cardTitleTime,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Image.network(
                icon,
                width: 22.0,
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                temp,
                style: AppTextStyles.cardTitleTemp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
