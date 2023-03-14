import 'package:flutter/material.dart';
import 'package:website/screen/screens.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HomeScreen(),
      ],
    );
  }
}
