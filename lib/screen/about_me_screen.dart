import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:website/theme/icons.dart';
import 'package:website/widgets/widgets.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        }),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardViewOne(
                titleCard: 'DESARROLLADOR FRONT-END',
                subtitileCard: 'Tipos de lenguaje',
                itemOne: 'Android Studio',
                itemTwo: 'Flutter',
                itemThree: 'Git',
                itemFour: 'GitHub',
                titleDescription:
                    'Desarrollo de aplicaciones móviles android y multiplataforma ',
                subtitileDescription: 'Dart, Kotlin, Java',
                itemSubtitleCard: 'Herramientas de desarrollo',
                circleAvatar: CircleAvatar(
                  backgroundColor: Colors.red.shade300,
                  radius: 40,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(development),
                  ),
                ),
              ),
              const SizedBox(width: 40),
              CardViewOne(
                titleCard: 'DISEÑADOR',
                subtitileCard: 'Tipo de diseño',
                itemOne: 'Figma',
                itemTwo: 'Adobe XD',
                itemThree: 'Sketch',
                titleDescription:
                    'Especializado en UX/UI para el desarrollo de aplicaciones móviles.',
                subtitileDescription: 'UX/UI, Material design 3',
                itemSubtitleCard: 'Herramientas de diseño',
                circleAvatar: CircleAvatar(
                  backgroundColor: Colors.red.shade300,
                  radius: 40,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(designer),
                  ),
                ),
              ),
              const SizedBox(width: 40),
              CardViewOne(
                titleCard: 'REALIDAD AUMENTADA',
                subtitileCard: 'Tipo de realidad aumentada',
                itemOne: 'Unity',
                itemTwo: 'Blender',
                itemThree: 'Vuforia',
                titleDescription:
                    'Deserrollo de aplicaciones móviles con realidad aumentada',
                subtitileDescription: 'Marcadores y reconocimiento facial',
                itemSubtitleCard: 'Herramientas de realidad aumentada',
                circleAvatar: CircleAvatar(
                  backgroundColor: Colors.red.shade300,
                  radius: 40,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(augmented),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
