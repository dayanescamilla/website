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
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                CardItemOne(
                  titleCard: 'Front End Developer',
                  captionCard: 'Languages',
                  titleDescription:
                  'Development of android applications and cross-platform applications.',
                  captionDescription: 'Dart, Java, Pyhton',
                  itemOne: 'Android Studio',
                  itemSubtitleCard: 'Dev Tools',
                  itemTwo: 'Flutter',
                  itemThree: 'Git',
                  itemFour: 'Visual Studio Code',
                  itemFive: 'Firebase',
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
                CardItemOne(
                  titleCard: 'Designer',
                  captionCard: 'Design type',
                  titleDescription:
                  'Specialized in user experience and user interface development for mobile application development.',
                  captionDescription: 'UX/UI, Material Design 3',
                  itemSubtitleCard: 'Design Tools',
                  itemOne: 'Figma',
                  itemTwo: 'Adobe XD',
                  itemThree: 'Sketch',
                  itemFour: 'Pencil',
                  itemFive: 'Google Analytics',
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
                CardItemOne(
                  titleCard: 'Augmented Reality',
                  captionCard: 'AR',
                  titleDescription:
                  'Development of augmented reality mobile applications with pattern and image recognition.',
                  captionDescription: 'Filters, Image Targets, ARKit',
                  itemSubtitleCard: 'AR Tools',
                  itemOne: 'Unity',
                  itemTwo: 'Blender',
                  itemThree: 'Vuforia',
                  itemFour: 'Spark AR',
                  itemFive: 'Effect House',
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
      ),
    );
  }
}
