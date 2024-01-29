import 'package:flutter/material.dart';
import 'package:theme_extensions/theme/resources/typography/text_size.dart';

abstract class AppTypography {
  static const body1 = TextStyle(
    fontSize: TextSizeApp.body1,
    fontWeight: FontWeight.normal,
  );

  static const h1 = TextStyle(
    fontSize: TextSizeApp.h1,
    fontWeight: FontWeight.w300,
  );
}
