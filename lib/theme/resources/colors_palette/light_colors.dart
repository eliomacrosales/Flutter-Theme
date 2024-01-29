import 'package:flutter/material.dart';
import 'package:theme_extensions/theme/resources/colors_palette/grey/grey_colors.dart';
import 'package:theme_extensions/theme/resources/colors_palette/red/red_colors.dart';

abstract class LightColors {
  /// colores personalizados para el tema claro

  static const primary = Color(0xff6200ee);
  static const onPrimary = Color(0xfffdfcfc);
  static const secondary = Color(0xff03dac6);
  static const onSecondary = Color(0xff121212);
  static const error = Color(0xffb00020);
  static const onError = Color(0xfffdfcfc);
  static const background = Color(0xfffdfcfc);
  static const onBackground = Color(0xff121212);
  static const surface = Color(0xfffdfcfc);
  static const onSurface = Color(0xff121212);
  static const onReadyBacLatam = Color(0xffcf19ea);

  static const grey = GreyColors();
  static const red = RedColors();
}