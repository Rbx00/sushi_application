import 'package:flutter/material.dart';

// callback функции
import '../../../routers/other/shackBarTest.dart';

class ButtonMenu extends StatelessWidget {
  final double padding_left;
  const ButtonMenu({super.key, this.padding_left = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: padding_left),
      child: IconButton(
        onPressed: () => printSnackBarMessage(context, 'Press Menu'),
        icon: Icon(Icons.menu),
      ),
    );
  }
}
