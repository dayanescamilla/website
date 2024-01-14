import 'package:flutter/material.dart';
import 'package:website/screen/screens.dart';
import 'package:website/theme/colors.dart';
import 'package:website/theme/texts.dart';

class NavigationBarW extends StatefulWidget {
  final Function currentIndex;
  const NavigationBarW({super.key, required this.currentIndex});

  @override
  State<NavigationBarW> createState() => _NavigationBarWState();
}

class _NavigationBarWState extends State<NavigationBarW> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        height: 60,
        indicatorColor: Colors.red.shade300,
        backgroundColor: onBackground,
        elevation: 0,
      ),
      child: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int i) {
          setState(() {
            _selectedIndex = i;
            widget.currentIndex(i);
          });
        },
        destinations: [
          NavigationDestination(
              icon: const Icon(
                Icons.home_outlined,
                weight: 100,
                color: Colors.white,
              ),
              label: tvHome),
          NavigationDestination(
              icon: const Icon(
                Icons.description_outlined,
                weight: 100,
                color: Colors.white,
              ),
              label: tvAboutMe),
          NavigationDestination(
              icon: const Icon(
                Icons.favorite_border_outlined,
                weight: 100,
                color: Colors.white,
              ),
              label: tvProjects),
          NavigationDestination(
              icon: const Icon(
                Icons.contact_page_outlined,
                weight: 100,
                color: Colors.white,
              ),
              label: tvContact),
        ],
      ),
    );
  }
}
