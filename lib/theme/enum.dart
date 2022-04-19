enum ThemeType { Dark, Light }

extension ThemeTypeExtension on ThemeType {
  static const values = {
    0: ThemeType.Dark,
    1: ThemeType.Light,
  };

  ThemeType? get value => values[this];
}
