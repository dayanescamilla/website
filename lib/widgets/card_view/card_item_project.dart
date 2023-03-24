import 'package:flutter/material.dart';

class CardItemProject extends StatelessWidget {
  final String titleProject, descriptionProject;
  final Image image;
  final TextButton textButton;
  const CardItemProject(
      {super.key,
      required this.titleProject,
      required this.descriptionProject,
      required this.image,
      required this.textButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 500,
      height: 300,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
      child: Center(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                image,
              ],
            ),
            Column(
              children: [
                Text(titleProject),
                Text(descriptionProject),
                textButton,
              ],
            ),
          ],
        ),
      ),
    );

    /*Card(
      color: const Color(0xffececec),
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 500,
        height: 250,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    titleProject,
                    style:
                        const TextStyle(fontSize: 20, color: Color(0xff443d3c)),
                  ),
                  Text(
                    descriptionProject,
                    style:
                        const TextStyle(fontSize: 10, color: Color(0xff443d3c)),
                  ),
                  textButton,
                ],
              ),
            )
          ],
        ),
      ),
    );*/
  }
}
