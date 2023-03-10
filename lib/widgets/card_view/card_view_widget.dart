import 'package:flutter/material.dart';

class CardViewWidget extends StatelessWidget {
  final String titleCard;
  const CardViewWidget({Key? key, required this.titleCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      color: Colors.white,
      child: Column(
        children: [
          Text(titleCard, style: const TextStyle(
              fontSize: 20, fontFamily: 'Space Mono', color: Colors.blue ),
          ),
          const SizedBox(height: 8),
          const Divider(height: 10, color: Colors.black,),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
