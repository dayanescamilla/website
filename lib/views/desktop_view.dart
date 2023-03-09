import 'package:flutter/material.dart';
import 'package:website/screen/screens.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          HomeScreen(),
        ],
      ),
    );
  }
}
