import 'package:flutter/material.dart';
import 'package:website/screen/screens.dart';

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
        backgroundColor: Colors.transparent,
        labelTextStyle: MaterialStatePropertyAll(TextStyle(color: Colors.blue)),
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
        destinations: const [
          NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                weight: 100,
                color: Colors.white,
              ),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(
                Icons.description_outlined,
                weight: 100,
                color: Colors.white,
              ),
              label: 'Description'),
          NavigationDestination(
              icon: Icon(
                Icons.favorite_border_outlined,
                weight: 100,
                color: Colors.white,
              ),
              label: 'Projects'),
          NavigationDestination(
              icon: Icon(
                Icons.contact_page_outlined,
                weight: 100,
                color: Colors.white,
              ),
              label: 'Contact'),
        ],
      ),
    );
  }
}
