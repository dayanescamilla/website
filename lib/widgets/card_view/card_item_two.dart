import 'package:flutter/material.dart';

class CardItemProject extends StatelessWidget {

  final AssetImage assetImage;
  final InkWell inkWell;
  const CardItemProject(
      {super.key, required this.assetImage, required this.inkWell,});

  @override
  Widget build(BuildContext context) {
      return Expanded(
        child: Container(
          height: 200,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 236, 236, 236),
            borderRadius: BorderRadius.circular(20),
             image:  DecorationImage(image: assetImage, fit: BoxFit.cover),
          ),
           child: inkWell,
        ),
      );
  }
}
