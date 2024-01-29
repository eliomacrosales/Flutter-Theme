import 'package:flutter/material.dart';
import 'package:theme_extensions/theme/resources/themes/dark_theme.dart';
import 'package:theme_extensions/theme/resources/themes/light_theme.dart';

class AppTheme with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  set themeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }

  /// Light theme
  static final light = LightTheme.light;

  /// Dark theme
  static final dark = DarkTheme.dark;
}