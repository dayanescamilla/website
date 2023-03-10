import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:website/theme/theme_website.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SelectableText('Desarrllador de aplicaciones moviles', style: ThemeWebsite.lightThemeData.textTheme.headline6),
          const SizedBox(height: 50),
          SelectableText('Actualmente me dedico al desarrollo de aplicaciones móviles nativas de android así como también al desarrollo multiplataforma (Android, iOS, Desktop y Web) compilado a su lenguaje nativo  con el  framework Flutter con ayuda del lenguaje de programación Dart.', style: ThemeWebsite.lightThemeData.textTheme.bodyText1)
        ],
      ),
    );
  }
}
