import 'package:flutter/material.dart';

// Заглужка с оповещением что было нажато
void printSnackBarMessage(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
