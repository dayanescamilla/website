import 'package:flutter/material.dart';
import 'package:website/theme/colors.dart';

class CardViewOne extends StatelessWidget {
  final String titleCard,
      titleDescription,
      subtitileCard,
      subtitileDescription,
      itemSubtitleCard,
      itemOne,
      itemTwo,
      itemThree;
  final String? itemFour,
      itemFive,
      itemSix,
      itemSeven,
      itemEight,
      itemNine,
      itemTen;
  final CircleAvatar circleAvatar;
  const CardViewOne(
      {super.key,
      required this.titleCard,
      required this.subtitileCard,
      required this.itemOne,
      required this.itemTwo,
      required this.itemThree,
      this.itemFour,
      this.itemFive,
      this.itemSix,
      this.itemSeven,
      this.itemEight,
      this.itemNine,
      this.itemTen,
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
        color: colorPrimario,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Column(
          children: [
            Center(child: circleAvatar),
            ListTile(
              title: Text(
                titleCard,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              titleDescription,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              subtitileCard,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
            Text(subtitileDescription,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w300)),
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
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white)),
            Text(
              itemOne,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w300),
            ),
            Text(
              itemTwo,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w300),
            ),
            Text(
              itemThree,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
