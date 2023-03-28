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
    return Expanded(
      child: Container(
        //color: Colors.red,
        height: 500,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 236, 236, 236),
            borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                image,
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(titleProject, style: const TextStyle(fontWeight: FontWeight.w900, color: Color.fromARGB(
                      255, 68, 61, 60),
                  ),
                  ),
                  Text(descriptionProject, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.w400, color: Color.fromARGB(
                      255, 68, 61, 60),
                  ),
                  ),
                  textButton,
                ],
              ),
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
