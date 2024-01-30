import 'package:flutter/material.dart';
import 'package:theme_extensions/config/theme/color_scheme/app_dark_colors.dart';
import 'package:theme_extensions/config/theme/color_scheme/app_light_colors.dart';

import 'app_button_sizes.dart';

class CustomButtonStyles {
  // Primary Button Style
  static ButtonStyle primaryButtonStyle(
      ThemeData theme, {
        ButtonSize height = ButtonSize.medium,
        ButtonWidth width = ButtonWidth.standard,
      }) {
    bool isLightTheme = theme.brightness == Brightness.light;
    return ElevatedButton.styleFrom(
      foregroundColor: isLightTheme
          ? AppLightColors.neutralWhite
          : AppDarkColors.neutralBlack,
      backgroundColor: isLightTheme
          ? AppLightColors.primary50
          : AppDarkColors.primary35,
      minimumSize:
      Size(widthFromButtonWidth(width), heightFromButtonSize(height)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );
  }

  // Secondary Button Style
  static ButtonStyle secondaryButtonStyle(ThemeData theme,
      {ButtonSize height = ButtonSize.medium,
        ButtonWidth width = ButtonWidth.standard}) {
    bool isLightTheme = theme.brightness == Brightness.light;

    return ElevatedButton.styleFrom(
      foregroundColor: isLightTheme
          ? AppLightColors.secondary95
          : AppDarkColors.secondary95,
      backgroundColor: isLightTheme
          ? AppLightColors.secondary35
          : AppDarkColors.secondary35,
      minimumSize:
      Size(widthFromButtonWidth(width), heightFromButtonSize(height)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );
  }

  // Outline Button Style
  static ButtonStyle outlineButtonStyle(ThemeData theme,
      {ButtonSize height = ButtonSize.medium,
        ButtonWidth width = ButtonWidth.standard}) {
    bool isLightTheme = theme.brightness == Brightness.light;

    return OutlinedButton.styleFrom(
      foregroundColor: isLightTheme //Text Color
          ? AppLightColors.neutralBlack
          : AppDarkColors.neutralWhite,
      side: BorderSide(
          color: isLightTheme
              ? AppLightColors.neutral35
              : AppDarkColors.neutral95),
      minimumSize:
      Size(widthFromButtonWidth(width), heightFromButtonSize(height)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ).copyWith(
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return isLightTheme // Background color
                ? AppLightColors.neutral50
                : AppDarkColors.neutral35;
          }
          return Colors.transparent; // Default to transparent background
        },
      ),
      side: MaterialStateProperty.resolveWith<BorderSide>(
              (Set<MaterialState> states) {
            // Check if the button is disabled
            if (states.contains(MaterialState.disabled)) {
              return BorderSide(
                color: isLightTheme
                    ? AppLightColors.neutral50
                    : AppDarkColors.neutral35,
                width:
                1, // You can adjust the border width for disabled state if needed
              );
            }
            // Return the default border side if not disabled
            return BorderSide(
              color: isLightTheme
                  ? AppLightColors.neutral50
                  : AppDarkColors.neutral35,
              width: 1, // You can adjust the default border width if needed
            );
          }),
    );
  }

  // Text Button Style
  static ButtonStyle textButtonStyle(ThemeData theme,
      {ButtonSize height = ButtonSize.medium,
        ButtonWidth width = ButtonWidth.standard}) {
    bool isLightTheme = theme.brightness == Brightness.light;
    return TextButton.styleFrom(
      foregroundColor: isLightTheme
          ? AppLightColors.secondary35
          : AppDarkColors.secondary95,
      minimumSize:
      Size(widthFromButtonWidth(width), heightFromButtonSize(height)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ).copyWith(
      backgroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return isLightTheme
              ? AppLightColors.neutral50
              : AppDarkColors.neutral75;
        }
        return Colors.transparent; // Default to transparent background
      }),
    );
  }
}