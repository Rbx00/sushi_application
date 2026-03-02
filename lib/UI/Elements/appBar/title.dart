import 'package:flutter/material.dart';
import '../../../themes/style/appBar_text.dart';

class TitleAppBar extends StatelessWidget {
  final String title;

  const TitleAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyleAppBar.readAndUpdate());
  }
}
