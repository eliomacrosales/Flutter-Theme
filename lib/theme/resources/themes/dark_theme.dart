import 'package:flutter/material.dart';
import 'package:theme_extensions/theme/resources/colors/dark_colors.dart';
import 'package:theme_extensions/theme/resources/extensions/app_colors_extension.dart';
import 'package:theme_extensions/theme/resources/extensions/app_text_theme_extension.dart';
import 'package:theme_extensions/theme/resources/typography/app_typography.dart';

class DarkTheme{

  static final dark = () {
    final defaultTheme = ThemeData.dark();
    return defaultTheme.copyWith(
      textTheme: defaultTheme.textTheme.copyWith(
        /// customizar las tipografias de los textos por default
        bodyMedium: AppTypography.body1.copyWith(color: darkAppColors.onBackground),
      ),
      extensions: [
        darkAppColors,
        darkTextTheme,
      ],
    );
  }();

  static final darkAppColors = AppColorsExtension(
    primary: DarkColors.primary,
    onPrimary: DarkColors.onPrimary,
    secondary: DarkColors.secondary,
    onSecondary: DarkColors.onSecondary,
    error: DarkColors.error,
    onError: DarkColors.onError,
    background: DarkColors.background,
    onBackground: DarkColors.onBackground,
    surface: DarkColors.surface,
    onSurface: DarkColors.onSurface,
    onReadyBacLatam: DarkColors.onReadyBacLatam,
  );

  static final darkTextTheme = AppTextThemeExtension(
    body1: AppTypography.body1.copyWith(color: darkAppColors.onReadyBacLatam),
    h1: AppTypography.h1.copyWith(color: darkAppColors.onBackground),
  );
}