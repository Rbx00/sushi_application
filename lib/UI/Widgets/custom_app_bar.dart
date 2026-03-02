import 'package:flutter/material.dart';
import '../../themes/style/appBar_text.dart';
import '../Elements/appBar/title.dart';
import './buttons/menu.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool titleCenter;
  final bool showButtonMenu;
  final List<Widget>? activition;
  final EdgeInsets padding;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showButtonMenu = false,
    this.activition,
    this.titleCenter = false,
    this.padding = const EdgeInsets.symmetric(horizontal: 15),
  });

  @override
  Size get preferredSize => Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Кнопка меню
          _showAndPositionButtonMenu(),

          // Мой title
          Expanded(child: _positionTitle()),

          // Доп кнопки такие как обовоещени, корзина и т.д.
          _positionActivition(),
        ],
      ),
    );
  }

  // Работа с Button Menu
  // Вернет или кнопку или пустой контейнер
  Widget _showAndPositionButtonMenu() {
    return showButtonMenu
        ? ButtonMenu(padding_left: padding.left)
        : Container();
  }

  // Работа с Title
  // Выбор расположения title, по центру или нет
  Widget _positionTitle() {
    return titleCenter ? _positionCenter() : _positionNotCenter();
  }

  // Расположить по центру
  Widget _positionCenter() {
    return Center(child: TitleAppBar(title: title));
  }

  // Расположить не по центру в левом углу с отступом
  Widget _positionNotCenter() {
    return Padding(
      padding: const EdgeInsetsGeometry.only(left: 80),
      child: TitleAppBar(title: title),
    );
  }

  // Работа со списком вложенных кнопок с правой стороны
  List<Widget> _correctGetData() {
    return activition ?? <Widget>[];
  }

  Widget _positionActivition() {
    return Padding(
      padding: EdgeInsetsGeometry.only(right: padding.right),
      child: Row(children: _correctGetData()),
    );
  }
}
