import 'package:flutter/material.dart';
import 'package:ligh_dark_mode_cubit/theme/theme_colors.dart';

import 'base_theme.dart';
import 'theme_colors.dart';

class AppDarkTheme extends BaseTheme {
  static final AppDarkTheme _instance = AppDarkTheme._();

  AppDarkTheme._();

  factory AppDarkTheme() => _instance;

  @override
  Color get primaryColor => LightThemeColors.primaryColor;

  @override
  Color get accentColor => LightThemeColors.accentColor;

  @override
  Brightness get brightness => Brightness.dark;

  @override
  ThemeData get darkTheme {
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      brightness: brightness,
      scaffoldBackgroundColor: DarkThemeColors.black,
      backgroundColor: DarkThemeColors.black,
    );
  }

  @override
  Color? get darkAccentColor => null;

  @override
  Color? get darkPrimaryColor => null;

  @override
  ThemeData? get lightTheme => null;

  /// This will use for custom colors which couldn't part of the theme data.
  @override
  Map<String, Color> get customColor => {
        AppColors.white: DarkThemeColors.black,
        AppColors.black: DarkThemeColors.white,
        AppColors.buttonTextColor: DarkThemeColors.buttonTextColor,
      };
}
