import 'package:flutter/material.dart';
import 'package:website/website.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dayan Escamilla',
      //* MAIN TOPIC
      theme: ThemeData(
        //* USE MATERIAL DESIGN 3
        useMaterial3: true,
        //* COLOR PRIMARIO
        primarySwatch: Colors.blueGrey,
        primaryColor: const Color(0xff2c242c),
        backgroundColor: const Color(0xff242424),
        //* FONT FAMILY TEXT
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans', bodyColor: Colors.white),
        //* GENERAL PROPERTIES FLOATING BUTTON
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: 0,
          backgroundColor: Colors.transparent,
          hoverColor: Colors.green,
          foregroundColor: Colors.white,
          shape: CircleBorder(side: BorderSide(color: Colors.green)),
        ),
        //* GENERAL PROPERTIES ICON BUTTON
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStatePropertyAll(Colors.red.shade300),
            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
            side: MaterialStatePropertyAll(
              BorderSide(color: Colors.red.shade300),
            ),
          ),
        ),
        //* GENERAL PROPERTIES OUTLINEBUTTON
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            textStyle:
                const MaterialStatePropertyAll(TextStyle(color: Colors.white)),
            iconColor: const MaterialStatePropertyAll(Colors.white),
            overlayColor: MaterialStatePropertyAll(Colors.red.shade300),
            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
            side: MaterialStatePropertyAll(
              BorderSide(color: Colors.red.shade300, width: 0.5),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
            floatingLabelStyle: TextStyle(color: Colors.red.shade300),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red.shade300),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
        ),
      ),
      home: const Website(),
    );
  }
}
