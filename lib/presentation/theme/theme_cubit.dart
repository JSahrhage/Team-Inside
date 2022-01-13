import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_darkTheme);

  static final _lightTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      background: Colors.black,
      onBackground: Colors.white,
      primary: Color.fromARGB(255, 0, 153, 255),
      primaryVariant: Color.fromARGB(255, 0, 107, 179),
      onPrimary: Colors.black,
      secondary: Color.fromARGB(255, 51, 51, 51),
      secondaryVariant: Color.fromARGB(255, 13, 13, 13),
      onSecondary: Colors.white,
      error: Colors.redAccent,
      onError: Colors.black,
      surface: Colors.yellow,
      onSurface: Color.fromARGB(255, 131, 5, 200),
    ),
    hintColor: const Color.fromARGB(128, 170, 170, 170),
    indicatorColor: Colors.greenAccent, // Used for Success-AlertDialog
  );

  static final _darkTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      background: Colors.black,
      onBackground: Colors.white,
      primary: Color.fromARGB(255, 0, 153, 255),
      primaryVariant: Color.fromARGB(255, 0, 122, 204), // -10%
      onPrimary: Colors.white,
      secondary: Color.fromARGB(255, 51, 51, 51),
      secondaryVariant: Color.fromARGB(255, 26, 26, 26), // -10%
      onSecondary: Color.fromARGB(255, 170, 170, 170),
      error: Colors.redAccent,
      onError: Colors.black,
      surface: Colors.yellow,
      onSurface: Color.fromARGB(255, 131, 5, 200),
    ),
    hintColor: const Color.fromARGB(128, 170, 170, 170),
    indicatorColor: Colors.greenAccent, // Used for Success-AlertDialog
  );

  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
  }
}
