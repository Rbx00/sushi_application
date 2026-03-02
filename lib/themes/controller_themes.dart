import 'package:flutter/material.dart';

class ControllerThemes {
  static ThemeData lightTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFFF7F7F9),
        foregroundColor: const Color(0xFF2B2B2B),
      ),
      scaffoldBackgroundColor: const Color(0xFFF7F7F9),
    );
  }

  // Применяется для Кнопок с покупками и Главной кнопкой магазина
  static Color primaryColor = const Color(0xFF48B2E7);

  // Используется для Кнопок опасных операций и лайков
  // Чтобы подчеркнуть особый акцент элемента
  //К опасным операциям будет например удаление из списка покупок или
  static Color focusPrimaryColor = const Color(0xFFF37171);

  // Основной рабочий background который будеи использоваться у всех приложений
  static Color mainBackgroundColor = Colors.white;
}
