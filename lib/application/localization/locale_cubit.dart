import 'package:flutter/material.dart' show Locale;
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(const SelectedLocale(Locale('de')));

  void toEnglish() => emit(const SelectedLocale(Locale('en')));
  void toGerman() => emit(const SelectedLocale(Locale('de')));
}
