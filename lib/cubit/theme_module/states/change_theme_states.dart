import 'package:flutter/material.dart';
import 'package:ligh_dark_mode_cubit/theme/base_theme.dart';
import 'package:ligh_dark_mode_cubit/theme/enum.dart';

class ChangeThemeState {
  final ThemeData themeData;
  final ThemeType type;
  bool? isDarkTheme;
  final Map<String, Color> customColors;

  ChangeThemeState({
    required this.themeData,
    required this.type,
    required this.customColors,
  }) {
    isDarkTheme = themeData.brightness == Brightness.dark;
  }

  factory ChangeThemeState.lightTheme({required ThemeType type}) {
    return ChangeThemeState(
      themeData: getModuleLightTheme(),
      customColors: getLightThemeCustomColors(),
      type: type,
    );
  }

  factory ChangeThemeState.darkTheme({required ThemeType type}) {
    return ChangeThemeState(
      themeData: getModuleDarkTheme(),
      customColors: getDarkThemeCustomColors(),
      type: type,
    );
  }
}
