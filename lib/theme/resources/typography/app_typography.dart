import 'package:flutter/material.dart';
import 'package:theme_extensions/theme/resources/typography/text_size.dart';

const kFontFamily = 'Graphic';

abstract class AppTypography {
  static const body1 = TextStyle(
    fontSize: TextSizeApp.body1,
    fontWeight: FontWeight.normal,
    fontFamily: kFontFamily
  );

  static const h1 = TextStyle(
    fontSize: TextSizeApp.h1,
    fontWeight: FontWeight.w300,
    fontFamily: kFontFamily
  );
}
