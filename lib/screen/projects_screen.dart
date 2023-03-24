import 'package:flutter/material.dart';
import 'package:website/widgets/card_view/card_item_project.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.topCenter,
      width: double.infinity,
      height: 600,
      //color: Color(0xffececec),
      padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
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
                    width: 150,
                    height: 250,
                  ),
                  textButton: TextButton(
                      onPressed: () {},
                      child: Text(
                        'data',
                        style: TextStyle(color: Colors.red),
                      )))
            ],
          ),
        ],
      ),
    );
  }
}
