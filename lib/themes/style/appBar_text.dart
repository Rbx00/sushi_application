import 'package:flutter/material.dart';

// Мой сервис тем
import '../controller_themes.dart';

class TextStyleAppBar {
  static TextStyle _fontStyle = TextStyle(
    color: ControllerThemes.lightTheme().appBarTheme.foregroundColor,
    fontSize: 32,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
  ); // начальное значение

  // Метод для работы и последующего обновления данных если потребуется
  static TextStyle readAndUpdate({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    FontStyle? fontStyle,
  }) {
    _fontStyle = TextStyle(
      color: color ?? ControllerThemes.lightTheme().appBarTheme.foregroundColor,
      fontSize: fontSize ?? _fontStyle.fontSize,
      fontWeight: fontWeight ?? _fontStyle.fontWeight,
      fontFamily: fontFamily ?? _fontStyle.fontFamily,
      fontStyle: fontStyle ?? _fontStyle.fontStyle,
    );
    return _fontStyle;
  }
}
