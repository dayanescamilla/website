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
    textTheme: const TextTheme(
      button: TextStyle(fontFamily: 'Space Mono', fontSize: 15, color: white),
      headline6:
          TextStyle(fontFamily: 'Space Mono', fontSize: 28, color: white),
      bodyText1:
          TextStyle(fontFamily: 'Space Mono', fontSize: 22, color: white),
      bodyText2:
          TextStyle(fontFamily: 'Space Mono', fontSize: 15, color: white),
    ),
  );

  static final ThemeData darkThemeData = ThemeData.dark().copyWith(
    //Colores
    primaryColor: primaryColor,
    //AppBar
  );
}
