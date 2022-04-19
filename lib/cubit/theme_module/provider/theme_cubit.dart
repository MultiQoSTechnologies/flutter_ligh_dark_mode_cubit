import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligh_dark_mode_cubit/cubit/theme_module/states/change_theme_states.dart';
import 'package:ligh_dark_mode_cubit/theme/enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeCubit changeThemeCubit = ThemeCubit()..onDecideThemeChange();


class ThemeCubit extends Cubit<ChangeThemeState> {
  ThemeCubit() : super(ChangeThemeState.lightTheme(type: ThemeType.Light));

  void changeToDarkTheme() {
    _saveOptionValue(1);
    emit(ChangeThemeState.darkTheme(type: ThemeType.Dark));
  }

  void changeToLightTheme() {
    _saveOptionValue(0);
    emit(ChangeThemeState.lightTheme(type: ThemeType.Light));
  }

  void onDecideThemeChange() async {
    final optionValue = await getOption();
     print("optionValue is $optionValue");
    if (optionValue == 0) {
      changeToLightTheme();
    } else if (optionValue == 1) {
      changeToLightTheme();
    }
  }

  Future<void> _saveOptionValue(int optionValue) async {
    var preferences = await SharedPreferences.getInstance();
    await preferences.setInt('theme_option', optionValue);
  }

  Future<int> getOption() async {
    try {
      var preferences = await SharedPreferences.getInstance();
      int option = preferences.getInt('theme_option') ?? 0;
      return option;
    } catch (e) {
      return 1;
    }
  }

  Future<ThemeType> getThemeType() async {
    var option = await getOption();
    return ThemeType.values[option];
  }
}
