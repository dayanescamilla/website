import 'package:flutter/material.dart';
import 'package:website/theme/theme_website.dart';
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
      theme: ThemeData(
        useMaterial3: true,

        primarySwatch: Colors.blueGrey,

        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: 0,
          backgroundColor: Colors.transparent,
          hoverColor: Colors.green,
          foregroundColor: Colors.white,
          shape: CircleBorder(side: BorderSide(color: Colors.green)),
        ),

        iconButtonTheme: const IconButtonThemeData(style: ButtonStyle(
            overlayColor: MaterialStatePropertyAll(Colors.green),
            backgroundColor: MaterialStatePropertyAll(Colors.transparent),
            side: MaterialStatePropertyAll(BorderSide(color: Colors.green),),
        ),),

        outlinedButtonTheme: const OutlinedButtonThemeData(style: ButtonStyle(
          textStyle: MaterialStatePropertyAll(TextStyle(color: Colors.white)),
          iconColor: MaterialStatePropertyAll(Colors.white),
          overlayColor: MaterialStatePropertyAll(Colors.green),
          backgroundColor: MaterialStatePropertyAll(Colors.transparent),
          side: MaterialStatePropertyAll(BorderSide(color: Colors.green, width: 0.5),),
        ),
        ),


      ),
      home: const Website(),
    );
  }
}
