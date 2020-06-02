import 'package:flutter/material.dart';

class CommonHelper extends Object {
  static bool isDarkMode(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }
}