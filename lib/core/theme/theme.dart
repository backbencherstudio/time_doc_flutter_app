import 'package:flutter/material.dart';
import 'theme_extensions/color_palette.dart';
import 'theme_extensions/text_theme.dart';
import 'theme_part/input_decoration_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: AppColors.primaryColor,
      brightness: Brightness.light,
      textTheme: AppTextThemes.lightTextTheme,
      scaffoldBackgroundColor: AppColors.lightModeBgColor,
      inputDecorationTheme:AppInputDecorationTheme.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
      primaryColor: AppColors.primaryColor,
      brightness: Brightness.light,
      textTheme: AppTextThemes.darkTextTheme,
      scaffoldBackgroundColor: AppColors.darkModeBgColor,
      inputDecorationTheme:AppInputDecorationTheme.darkInputDecorationTheme
  );
}