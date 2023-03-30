import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:website/widgets/card_view/card_view_neo.dart';
import 'package:website/widgets/widgets.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: double.infinity,
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
              CardViewNeo(
                titleCard: 'Front End Developer',
                subtitileCard: 'Languages',
                itemOne: 'Android Studio',
                itemTwo: 'Flutter',
                itemThree: 'Git',
                itemFour: 'GitHub',
                itemFive: 'sadasdsad',
                titleDescription:
                    'Development of android applications and cross-platform applications.',
                subtitileDescription: 'Dart, Java, Pyhton',
                itemSubtitleCard: 'Dev Tools',
                circleAvatar: CircleAvatar(
                  backgroundColor: Colors.red.shade400,
                  radius: 40,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('assets/images/icons/icon_development.png'),
                  ),
                ),
              ),
              const SizedBox(width: 80),
              CardViewNeo(
                titleCard: 'Designer',
                subtitileCard: 'Design type',
                itemOne: 'Figma',
                itemTwo: 'Adobe XD',
                itemThree: 'Sketch',
                titleDescription:
                    'Specialized in UX/UI development for mobile application development.',
                subtitileDescription: 'UX/UI',
                itemSubtitleCard: 'Design Tools',
                circleAvatar: CircleAvatar(
                  backgroundColor: Colors.red.shade400,
                  radius: 40,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('assets/images/icons/icon_design.png'),
                  ),
                ),
              ),
              const SizedBox(width: 80),
              CardViewNeo(
                titleCard: 'Augmented Reality',
                subtitileCard: 'AR',
                itemOne: 'Unity',
                itemTwo: 'Blender',
                itemThree: 'Vuforia',
                titleDescription:
                    'Development of mobile applications with augmented reality',
                subtitileDescription: 'UX/UI',
                itemSubtitleCard: 'AR Tools',
                circleAvatar: CircleAvatar(
                  backgroundColor: Colors.red.shade400,
                  radius: 40,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    child: Image.asset('assets/images/icons/icon_ar.png'),
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
