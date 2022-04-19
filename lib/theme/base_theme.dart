import 'package:flutter/material.dart';
import 'package:ligh_dark_mode_cubit/theme/dark_theme.dart';
import 'package:ligh_dark_mode_cubit/theme/light_theme.dart';

abstract class BaseTheme {
  late Brightness brightness;

  Color? get primaryColor;

  Color? get darkPrimaryColor;

  Color? get accentColor;

  Color? get darkAccentColor;

  Map<String,Color> get customColor;

  ThemeData? get lightTheme;

  ThemeData? get darkTheme;
}

ThemeData getModuleLightTheme() {
  return AppLightTheme().lightTheme;
}

Map<String,Color> getLightThemeCustomColors() {
  return AppLightTheme().customColor;
}

ThemeData getModuleDarkTheme() {
  return AppDarkTheme().darkTheme;
}

Map<String,Color> getDarkThemeCustomColors() {
  return AppDarkTheme().customColor;
}