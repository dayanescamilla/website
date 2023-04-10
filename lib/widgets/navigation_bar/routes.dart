import 'package:flutter/material.dart';
import 'package:website/screen/screens.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<Widget> mylistPage = [
      const HomeScreen(),
      const AboutMeScreen(),
      const ProjectsScreen(),
      const ContactScreen(),
    ];
    return mylistPage[index];
  }
}
