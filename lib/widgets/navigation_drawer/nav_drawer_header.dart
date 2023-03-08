import 'package:flutter/material.dart';

class NavDrawerHeader extends StatelessWidget {
  const NavDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.green,
      alignment: Alignment.center,
      child: Column(
        children: const [
          Text('Menu', style: TextStyle(fontSize: 20, fontFamily: 'Space Mono'),
          ),
        ],
      ),
    );
  }
}
