import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/widgets/card_view/card_item_project.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, SizingInformation){
      //IMAGEN
      double sizeHightBanner =
      SizingInformation.deviceScreenType == DeviceScreenType.mobile
          ? 100
          : 400;
      double sizeWidthBanner =
      SizingInformation.deviceScreenType == DeviceScreenType.mobile
          ? 100
          : 400;
      //CONTAINER
      double sizeHightContainer = SizingInformation.deviceScreenType == DeviceScreenType.mobile ? 600 : 1200;

      return Container(
        //alignment: Alignment.topCenter,
        width: double.infinity,
        height: sizeHightContainer,
        //color: Color(0xffececec),
        //padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardItemProject(
                  titleProject: 'Agenda Medica',
                  descriptionProject:
                  'Una agenda virutal con el fin de poder ayudar a la gente a agendar sus citas medicas con mayor facilidad',
                  image: Image.asset(
                    'assets/images/project.png',
                    width: sizeWidthBanner,
                    height: sizeHightBanner, alignment: Alignment.center,
                  ),
                  textButton: TextButton(
                    onPressed: () => launch('https://pub.dev/packages/url_launcher/install'),
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ))

                    ),
                    child: const Text(
                      'Go to repository',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                /*CardItemProject(
                  titleProject: 'Agenda Medica',
                  descriptionProject:
                      'Una agenda virutal con el fin de poder ayudar a la gente a agendar sus citas medicas con mayor facilidad',
                  image: Image.asset(
                    'assets/images/project.png',
                    width: 200,
                    height: 200,
                  ),
                  textButton: TextButton(
                      onPressed: () => launch('https://pub.dev/packages/url_launcher/install'),
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ))

                    ),
                      child: const Text(
                        'Go to repository',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                   ),
              ),
              CardItemProject(
                titleProject: 'Agenda Medica',
                descriptionProject:
                'Una agenda virutal con el fin de poder ayudar a la gente a agendar sus citas medicas con mayor facilidad',
                image: Image.asset(
                  'assets/images/project.png',
                  width: 200,
                  height: 200,
                ),
                textButton: TextButton(
                  onPressed: () => launch('https://pub.dev/packages/url_launcher/install'),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ))

                  ),
                  child: const Text(
                    'Go to repository',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardItemProject(
                titleProject: 'Agenda Medica',
                descriptionProject:
                'Una agenda virutal con el fin de poder ayudar a la gente a agendar sus citas medicas con mayor facilidad',
                image: Image.asset(
                  'assets/images/project.png',
                  width: 200,
                  height: 200,
                ),
                textButton: TextButton(
                  onPressed: () => launch('https://pub.dev/packages/url_launcher/install'),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ))

                  ),
                  child: const Text(
                    'Go to repository',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              CardItemProject(
                titleProject: 'Agenda Medica',
                descriptionProject:
                'Una agenda virutal con el fin de poder ayudar a la gente a agendar sus citas medicas con mayor facilidad',
                image: Image.asset(
                  'assets/images/project.png',
                  width: 200,
                  height: 200,
                ),
                textButton: TextButton(
                  onPressed: () => launch('https://pub.dev/packages/url_launcher/install'),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ))

                  ),
                  child: const Text(
                    'Go to repository',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
              ),*/
              ],
            ),
          ],
        ),
      );

    });


  }
}
