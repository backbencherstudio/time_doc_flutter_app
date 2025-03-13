import 'package:flutter/material.dart';
import '../theme_extensions/color_palette.dart';

class AppInputDecorationTheme {
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(

    prefixIconColor: AppColors.inputDecorationHintColor,
    filled: true,
    fillColor: AppColors.inputDecorationFillColor,
    labelStyle: TextStyle(color: AppColors.inputDecorationHintColor),
    hintStyle: TextStyle(color: AppColors.inputDecorationHintColor),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.inputDecorationStrokeColor),
      borderRadius: BorderRadius.circular(10),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.inputDecorationStrokeColor),
      borderRadius: BorderRadius.circular(10),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.inputDecorationStrokeColor),
      borderRadius: BorderRadius.circular(10),
    ),
  );
}