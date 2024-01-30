import 'package:flutter/material.dart';
import 'package:theme_extensions/config/theme/themes/app_theme.dart';

class AppThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  set themeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }

  /// Light theme
  static final light = AppTheme.lightTheme;

  /// Dark theme
  static final dark = AppTheme.darkTheme;
}