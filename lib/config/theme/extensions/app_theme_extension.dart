import 'package:flutter/material.dart';
import 'package:theme_extensions/config/theme/extensions/app_colors_extension.dart';
import 'package:theme_extensions/config/theme/themes/app_theme.dart';

/// Here you should define getters for your `ThemeExtension`s.
///
/// Never use `Theme.of(context).extension<MyColors>()!`
/// how they do it in the [official documentation](https://api.flutter.dev/flutter/material/ThemeExtension-class.html),
/// because it's not safe. Always create a getter for your `ThemeExtension` and use it instead.
///
/// Usage example: `Theme.of(context).appColors`.
extension AppThemeExtension on ThemeData {
  AppColorsExtension get appColors =>
      extension<AppColorsExtension>() ?? AppTheme.lightAppColors;
}

/// A more convenient way to get `ThemeData` from the `BuildContext`.
///
/// Usage example: `context.theme`.
extension ThemeGetter on BuildContext {
  ThemeData get theme => Theme.of(this);
}