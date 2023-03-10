import 'package:flutter/material.dart';
import 'package:website/widgets/widgets.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CardViewWidget(titleCard: 'Design UX/UI', descriptionCard: 'Design user interface and user experience', itemOne: 'Figma', itemTwo: 'Sketch', itemThree: 'Pencil'),
          CardViewWidget(titleCard: 'Developer', descriptionCard: 'Design user interface and user experience', itemOne: 'Dart', itemTwo: 'Java', itemThree: 'XML', itemFour: 'Kotlin',),
          CardViewWidget(titleCard: 'Design UX/UI', descriptionCard: 'Design user interface and user experience', itemOne: 'Figma', itemTwo: 'Sketch', itemThree: 'Pencil'),
        ],
      ),
    );
  }
}
