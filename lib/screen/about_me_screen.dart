import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:website/theme/references.dart';
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
                titleCard: 'Front End Developer',
                subtitileCard: 'Languages',
                itemOne: 'Android Studio',
                itemTwo: 'Flutter',
                itemThree: 'Git',
                titleDescription:
                    'Development of android applications and cross-platform applications.',
                subtitileDescription: 'Dart, Java, Pyhton',
                itemSubtitleCard: 'Dev Tools',
                circleAvatar: CircleAvatar(
                  backgroundColor: Colors.red.shade300,
                  radius: 40,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(icDevelopment),
                  ),
                ),
              ),
              const SizedBox(width: 40),
              CardViewOne(
                titleCard: 'Designer',
                subtitileCard: 'Design type',
                itemOne: 'Figma',
                itemTwo: 'Adobe XD',
                itemThree: 'Sketch',
                titleDescription:
                    'Specialized in UX/UI development for mobile application development.',
                subtitileDescription: 'UX/UI, Material design 3',
                itemSubtitleCard: 'Design Tools',
                circleAvatar: CircleAvatar(
                  backgroundColor: Colors.red.shade300,
                  radius: 40,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(icDesigner),
                  ),
                ),
              ),
              const SizedBox(width: 40),
              CardViewOne(
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
                  backgroundColor: Colors.red.shade300,
                  radius: 40,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(icAugmented),
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
