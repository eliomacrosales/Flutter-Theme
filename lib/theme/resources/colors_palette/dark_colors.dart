import 'package:flutter/material.dart';
import 'package:theme_extensions/theme/resources/colors_palette/grey/grey_colors.dart';
import 'package:theme_extensions/theme/resources/colors_palette/red/red_colors.dart';

abstract class DarkColors {
  /// colores personalizados para el tema oscuro

  static const primary = Color(0xffbb86fc);
  static const onPrimary = Color(0xff131311);
  static const secondary = Color(0xff121212);
  static const onSecondary = Color(0xff03dac6);
  static const error = Color(0xffcf6679);
  static const onError = Color(0xffde2546);
  static const background = Color(0xff121212);
  static const onBackground = Color(0xfffdfcfc);
  static const surface = Color(0xff121212);
  static const onSurface = Color(0xfffbfafa);
  static const onReadyBacLatam = Color(0xfff8d31f);

  static const grey = GreyColors();
  static const red = RedColors();
}
