import 'package:flutter/material.dart';
import 'package:ligh_dark_mode_cubit/theme/theme_colors.dart';
import 'base_theme.dart';

class AppLightTheme extends BaseTheme {
  static final AppLightTheme _instance = AppLightTheme._();

  AppLightTheme._();

  factory AppLightTheme() => _instance;

  @override
  Color get primaryColor => LightThemeColors.primaryColor;

  @override
  Color get accentColor => LightThemeColors.accentColor;

  @override
  Brightness get brightness => Brightness.light;

  @override
  ThemeData get lightTheme {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      brightness: brightness,
      scaffoldBackgroundColor: LightThemeColors.white,
      backgroundColor: LightThemeColors.white,
    );
  }

  @override
  Color? get darkAccentColor => null;

  @override
  Color? get darkPrimaryColor => null;

  @override
  ThemeData? get darkTheme => null;

  /// This will use for custom colors which couldn't part of the theme data.
  @override
  Map<String, Color> get customColor => {
        AppColors.white: LightThemeColors.white,
        AppColors.black: LightThemeColors.black,
        AppColors.buttonTextColor: LightThemeColors.buttonTextColor,
      };
}
