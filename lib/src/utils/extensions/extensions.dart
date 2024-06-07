import 'package:flutter/material.dart';

extension ColorExt on Color {
  static Color fromHex(String color) =>
      Color(int.parse(color.replaceAll("#", "0xFF")));
}

extension ContextExt on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  TextTheme get textTheme => Theme.of(this).textTheme;
}
