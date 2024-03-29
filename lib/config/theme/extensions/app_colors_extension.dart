import 'package:flutter/material.dart';

/// con esta clase podemos customizar los colores por default del colorScheme
/// y además incluir nuevos
class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  AppColorsExtension({
    required this.primary20,
  });

  final Color primary20;

  /// funcionamiento del metodo lerp
  /// cuando se cambia de un tema a otro, los colores cambian gradualmente,... de forma suave
  @override
  ThemeExtension<AppColorsExtension> lerp(
      covariant ThemeExtension<AppColorsExtension>? other,
      double t,
      ) {
    if (other is! AppColorsExtension) {
      return this;
    }
    return AppColorsExtension(
      primary20: Color.lerp(primary20, other.primary20, t)!,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> copyWith() {
    throw UnimplementedError();
  }
}