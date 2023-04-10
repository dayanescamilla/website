import 'package:flutter/material.dart';

class CardViewOne extends StatelessWidget {
  final String titleCard,
      titleDescription,
      subtitileCard,
      subtitileDescription,
      itemSubtitleCard,
      itemOne,
      itemTwo,
      itemThree;
  final CircleAvatar circleAvatar;
  const CardViewOne(
      {super.key,
      required this.titleCard,
      required this.subtitileCard,
      required this.itemOne,
      required this.itemTwo,
      required this.itemThree,
      required this.titleDescription,
      required this.subtitileDescription,
      required this.itemSubtitleCard,
      required this.circleAvatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 250,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                offset: Offset(6, 9),
                color: Color.fromARGB(255, 32, 32, 32),
                blurRadius: 6),
          ]),
      child: Center(
        child: Column(
          children: [
            Center(child: circleAvatar),
            ListTile(
              title: Text(
                titleCard,
                textAlign: TextAlign.center,
                style: const TextStyle( fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              titleDescription,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              subtitileCard,
              textAlign: TextAlign.center,
            ),
            Text(subtitileDescription,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.w300)),
            const SizedBox(height: 10),
            const Divider(
              height: 1,
              endIndent: 20,
              indent: 20,
              color: Colors.white,
            ),
            const SizedBox(height: 10),
            //  Icon(Icons.)
            Text(itemSubtitleCard,
                textAlign: TextAlign.center),
            Text(
              itemOne,
              style: const TextStyle(fontWeight: FontWeight.w300),
            ),
            Text(
              itemTwo,
              style: const TextStyle(fontWeight: FontWeight.w300),
            ),
            Text(
              itemThree,
              style: const TextStyle( fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
