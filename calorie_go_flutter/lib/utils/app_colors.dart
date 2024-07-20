import 'package:flutter/material.dart';
class AppColors {
  final bool isDarkMode;

  AppColors({this.isDarkMode = false});

  Color get textColor => isDarkMode ? Colors.white : Colors.black;
}
