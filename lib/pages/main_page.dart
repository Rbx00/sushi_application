import 'package:flutter/material.dart';
import '../UI/Widgets/custom_app_bar.dart';
import '../UI/Widgets/buttons/menu.dart';

class MainPage extends StatefulWidget {
  final String title;
  const MainPage({super.key, required this.title});

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: widget.title,
        titleCenter: true,
        showButtonMenu: true,
        activition: [ButtonMenu(), ButtonMenu(), ButtonMenu(), ButtonMenu()],
      ),
    );
  }
}
