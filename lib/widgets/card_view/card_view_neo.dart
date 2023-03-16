import 'package:flutter/material.dart';

class CardViewNeo extends StatelessWidget {
  const CardViewNeo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Container(
          child: Text('data'),
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(color: Colors.blue),
        ),
      ),
    ));
  }
}
