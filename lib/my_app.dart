import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligh_dark_mode_cubit/theme/theme_colors.dart';

import 'cubit/theme_module/provider/theme_cubit.dart';
import 'cubit/theme_module/states/change_theme_states.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    /// BlocBuilder will notify when we changed the theme.
    /// For each screen add this BlocBuilder setup at top of widget tree.
    return BlocBuilder<ThemeCubit, ChangeThemeState>(
        bloc: changeThemeCubit,
        builder: (context, themeState) {
          return Scaffold(
            /// themeState.customColors[AppColors.white]
            /// AppColors.white = This will be white for light theme and black for dark theme
            /// Ee define this color in customColors map respectively.
            backgroundColor: themeState.customColors[AppColors.white],
            body: SafeArea(
              child: Container(
                color: themeState.customColors[AppColors.white],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Testing the dark/light mode',
                        style: TextStyle(
                          color: themeState.customColors[AppColors.black],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          /// To change the light theme
                          changeThemeCubit.changeToLightTheme();
                        },
                        child: Text(
                          'Light Theme',
                          style: TextStyle(
                            color: themeState
                                .customColors[AppColors.buttonTextColor],
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          /// To change the dark theme
                          changeThemeCubit.changeToDarkTheme();
                        },
                        child: Text(
                          'Dark Theme',
                          style: TextStyle(
                            color: themeState
                                .customColors[AppColors.buttonTextColor],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
