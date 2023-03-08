import 'package:flutter/material.dart';
import 'package:website/theme/theme_website.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SelectableText('Actualmente me dedico al desarrollo de aplicaciones móviles nativas de android así como también al desarrollo multiplataforma (Android, iOS, Desktop y Web) compilado a su lenguaje nativo  con el  framework Flutter con ayuda del lenguaje de programación Dart.', style: ThemeWebsite.lightThemeData.textTheme.titleMedium)
        ],
      ),
    );
  }
}
