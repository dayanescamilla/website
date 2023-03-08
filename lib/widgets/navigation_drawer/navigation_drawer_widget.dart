import 'package:flutter/material.dart';
import 'package:website/widgets/widgets.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.cyan, blurRadius: 16),
        ]
      ),
      child: Column(
        children: const [
          NavDrawerHeader(),
        ],
      ),
    );
  }
}
