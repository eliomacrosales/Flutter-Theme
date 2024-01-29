import 'package:flutter/material.dart';
import 'package:theme_extensions/theme/resources/colors_palette/light_colors.dart';
import 'package:theme_extensions/theme/resources/extensions/app_colors_extension.dart';
import 'package:theme_extensions/theme/resources/extensions/app_text_theme_extension.dart';
import 'package:theme_extensions/theme/resources/typography/app_typography.dart';

class LightTheme{
  static final light = () {
    final defaultTheme = ThemeData.light();
    return defaultTheme.copyWith(
      extensions: [
        lightAppColors,
        lightTextTheme,
      ],
    );
  }();

  static final lightAppColors = AppColorsExtension(
    primary: LightColors.primary,
    onPrimary: LightColors.onPrimary,
    secondary: LightColors.secondary,
    onSecondary: LightColors.onSecondary,
    error: LightColors.error,
    onError: LightColors.onError,
    background: LightColors.background,
    onBackground: LightColors.onBackground,
    surface: LightColors.surface,
    onSurface: LightColors.onSurface,
    onReadyBacLatam: LightColors.onReadyBacLatam,
  );

  static final lightTextTheme = AppTextThemeExtension(
    body1: AppTypography.body1.copyWith(color: lightAppColors.onReadyBacLatam),
    h1: AppTypography.h1.copyWith(color: lightAppColors.onBackground),
  );
}