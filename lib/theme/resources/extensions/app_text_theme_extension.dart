import 'package:flutter/material.dart';

class AppTextThemeExtension
    extends ThemeExtension<AppTextThemeExtension> {
  const AppTextThemeExtension({
    required this.body1,
    required this.h1,
  });

  final TextStyle body1;
  final TextStyle h1;

  @override
  ThemeExtension<AppTextThemeExtension> lerp(
    covariant ThemeExtension<AppTextThemeExtension>? other,
    double t,
  ) {
    if (other is! AppTextThemeExtension) {
      return this;
    }

    return AppTextThemeExtension(
      body1: TextStyle.lerp(body1, other.body1, t)!,
      h1: TextStyle.lerp(h1, other.h1, t)!,
    );
  }

  @override
  ThemeExtension<AppTextThemeExtension> copyWith() {
    throw UnimplementedError();
  }
}
