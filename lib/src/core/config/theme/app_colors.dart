import '../../utils/extensions/extensions.dart';
import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color green = Colors.green;
  static Color grey = ColorExt.fromHex("#8B8688");
  static List<Color> gradientColor = [
    ColorExt.fromHex("#FB0160"),
    ColorExt.fromHex("#F703D0")
  ];
  static Color hotPink = ColorExt.fromHex("#FB0160");
}
