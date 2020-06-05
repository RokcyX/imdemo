import 'package:flutter/material.dart';
import 'package:imdemo/helper/CommonHelper.dart';

extension ColorExtension on Color {
  Color setDarkModeColor(BuildContext context, Color darkModeColor) {
    return CommonHelper.isDarkMode(context) ? darkModeColor : this;
  }
}