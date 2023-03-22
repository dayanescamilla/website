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
        primarySwatch: Colors.blueGrey,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      home: const Website(),
    );
  }
}
