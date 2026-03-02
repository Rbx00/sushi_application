import 'package:flutter/material.dart';
import './pages/main_page.dart';
import './themes/controller_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sushi Application",
      debugShowCheckedModeBanner: false,
      theme: ControllerThemes.lightTheme(),
      home: MainPage(title: 'Главная'),
    );
  }
}
