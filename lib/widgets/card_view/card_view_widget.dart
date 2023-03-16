import 'package:flutter/material.dart';

class CardViewWidget extends StatelessWidget {
  final String titleCard, descriptionCard, itemOne, itemTwo, itemThree;
  final String? itemFour,
      itemFive,
      itemSix,
      itemSeven,
      itemEight,
      itemNine,
      itemTen;

  const CardViewWidget(
      {Key? key,
      required this.titleCard,
      required this.descriptionCard,
      required this.itemOne,
      required this.itemTwo,
      required this.itemThree,
      this.itemFour,
      this.itemFive,
      this.itemSix,
      this.itemSeven,
      this.itemEight,
      this.itemNine,
      this.itemTen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 250,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 20,
        //shadowColor: Colors.blue,
        color: Colors.deepOrangeAccent,
        child: Column(
          children: [
            Text(
              titleCard,
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
            const SizedBox(height: 10),
            Text(
              descriptionCard,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15, color: Colors.black),
            ),
            const SizedBox(height: 10),
            const Divider(height: 1, endIndent: 20, indent: 20),
            const SizedBox(height: 10),
            Text(
              itemOne,
              style: const TextStyle(fontSize: 15, color: Colors.black),
            ),
            const SizedBox(height: 5),
            Text(
              itemTwo,
              style: const TextStyle(fontSize: 15, color: Colors.black),
            ),
            const SizedBox(height: 5),
            Text(
              itemThree,
              style: const TextStyle(fontSize: 15, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
