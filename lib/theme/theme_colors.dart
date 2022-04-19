import 'package:flutter/material.dart';

/// Define your light theme colors
class LightThemeColors {
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color primaryColor = Colors.blue;
  static const Color accentColor = Colors.cyanAccent;
  static const Color buttonTextColor = Colors.red;
}

/// Define your dark theme colors
class DarkThemeColors {
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color primaryColor = Colors.green;
  static const Color accentColor = Colors.deepOrangeAccent;
  static const Color buttonTextColor = Colors.yellow;
}

/// Define the key for color
/// This will be use to access the color in UI.
/// NOTE:- These key will be use for customColor map in AppLightTheme/AppDarkTheme class.
class AppColors {
  static const String black = "black";
  static const String white = "white";
  static const String buttonTextColor = "buttonTextColor";
}