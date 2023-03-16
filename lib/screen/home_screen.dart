import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:website/theme/theme_website.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      double titleSize =
          SizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 40
              : 60; //Definir tamaño de titulo
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GradientText(
              'MOBILE APP DEVELOPER AND UX/UI DESIGNER',
              colors: const [
                Colors.redAccent,
                Colors.greenAccent,
                Colors.blueAccent
              ],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: titleSize,
                  //fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w900),
            ),
            /* SelectableText('Desarrllador de aplicaciones moviles',
              style: ThemeWebsite.lightThemeData.textTheme.headline6),
          const SizedBox(height: 50),
          SelectableText(
              'Actualmente me dedico al desarrollo de aplicaciones móviles nativas de android así como también al desarrollo multiplataforma (Android, iOS, Desktop y Web) compilado a su lenguaje nativo  con el  framework Flutter con ayuda del lenguaje de programación Dart.',
              style: ThemeWebsite.lightThemeData.textTheme.bodyText1)*/
          ],
        ),
      );
    });
  }
}
