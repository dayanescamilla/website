import 'package:flutter/material.dart';

class CardViewNeo extends StatelessWidget {
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
  const CardViewNeo(
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
          color: Colors.black38,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                offset: Offset(-4, -4), color: Colors.white10, blurRadius: 3.0),
          ]),
      child: Center(
        child: Column(
          children: [
            Center(child: circleAvatar
                /*CircleAvatar(
                backgroundColor: Colors.red.shade400,
                maxRadius: 40,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset('assets/logo_design.png'),
                ),
              ),*/
                ),
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
              style: TextStyle(
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
