import 'package:flutter/material.dart';
import 'package:theme_extensions/config/theme/color_scheme/app_dark_colors.dart';
import 'package:theme_extensions/config/theme/color_scheme/app_light_colors.dart';
import 'package:theme_extensions/config/theme/extensions/app_colors_extension.dart';

class AppTheme {
  /// Light Theme
  static ThemeData get lightTheme {
    final lightTheme = ThemeData.light();
    return lightTheme.copyWith(
        colorScheme: const ColorScheme.light(
            primary: Colors.green,
            onBackground: Colors.green,
          surface:  Colors.green,
        ),
        extensions: [lightAppColors],
        textTheme:
            _buildTextTheme(lightTheme.textTheme, AppLightColors.secondary50));
  }

  static final lightAppColors =
      AppColorsExtension(primary20: AppLightColors.primary20);

  /// Dark Theme
  static ThemeData get darkTheme {
    final darkTheme = ThemeData.dark();
    return darkTheme.copyWith(
        colorScheme: const ColorScheme.dark(
            primary: Colors.green,
            onBackground: Colors.green,
          surface:  Colors.green,
        ),
        extensions: [darkAppColors],
        textTheme:
            _buildTextTheme(darkTheme.textTheme, AppDarkColors.attention50));
  }

  static final darkAppColors =
      AppColorsExtension(primary20: AppDarkColors.primary20);

  static TextTheme _buildTextTheme(TextTheme base, Color textColor) {
    return base.copyWith(
      displayLarge: base.displayLarge!.copyWith(
        fontSize: 36.0,
        fontWeight: FontWeight.w400, // Regular
        height: 1.3,
        color: textColor, // Use AppColors for text color
      ),
      displayMedium: base.displayMedium!.copyWith(
        fontSize: 28.0,
        fontWeight: FontWeight.w400, // Regular
        height: 1.3,
        color: textColor, // Use AppColors for text color
      ),
      headlineLarge: base.headlineLarge!.copyWith(
        fontSize: 24.0,
        fontWeight: FontWeight.w400, // Regular
        height: 1.4,
        color: textColor, // Use AppColors for text color
      ),
      headlineMedium: base.headlineMedium!.copyWith(
        fontSize: 21.0,
        fontWeight: FontWeight.w400, // Regular
        height: 1.4,
        color: textColor, // Use AppColors for text color
      ),
      titleLarge: base.titleLarge!.copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.w400, // Regular
        height: 1.3,
        color: textColor, // Use AppColors for text color
      ),
      bodyLarge: base.bodyLarge!.copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w400, // Regular
        height: 1.3,
        color: textColor, // Use AppColors for text color
      ),
      bodyMedium: base.bodyMedium!.copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w400, // Regular
        height: 1.3,
        color: textColor, // Use AppColors for text color
      ),
      bodySmall: base.bodySmall!.copyWith(
        fontSize: 13.0,
        fontWeight: FontWeight.w400, // Regular
        height: 1.3,
        color: textColor, // Use AppColors for text color
      ),
      labelLarge: base.labelLarge!.copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.w400, // Regular
        height: 1.3,
        color: textColor, // Use AppColors for text color
      ),
      labelSmall: base.labelSmall!.copyWith(
        fontSize: 10.0,
        fontWeight: FontWeight.w500, // Medium
        height: 1.3,
        color: textColor, // Use AppColors for text color
      ),
      // Extend with more styles as needed
    );
  }
}
