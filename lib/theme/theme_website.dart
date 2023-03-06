
import 'package:flutter/material.dart';

class ThemeWebsite {
  static const Color primaryColor = Colors.green;
  static const Color secondaryColor = Colors.cyan;
  static const Color black = Colors.black87;
  static const Color white = Colors.white;
  static final ThemeData lightThemeData = ThemeData.light().copyWith(
    //Colores
    primaryColor: primaryColor,
    //AppBar
  );

  static final ThemeData darkThemeData = ThemeData.dark().copyWith(
    //Colores
    primaryColor: primaryColor,
    //AppBar
  );
}