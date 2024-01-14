import 'package:flutter/material.dart';

class NavigationRailWidget extends StatefulWidget {
  final Function seleceted;
  const NavigationRailWidget({super.key, required this.seleceted});

  @override
  State<NavigationRailWidget> createState() => _NavigationRailWidgetState();
}

class _NavigationRailWidgetState extends State<NavigationRailWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      onDestinationSelected: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      selectedIndex: _selectedIndex,
      destinations: const [
        NavigationRailDestination(icon: Icon(Icons.home), label: Text('CASAAA')),
        NavigationRailDestination(
            icon: Icon(Icons.feed), label: Text('Descritpion')),
        NavigationRailDestination(
            icon: Icon(Icons.favorite), label: Text('Projects')),
        NavigationRailDestination(
            icon: Icon(Icons.settings), label: Text('About Me')),
      ],
      labelType: NavigationRailLabelType.all,
      selectedLabelTextStyle: const TextStyle(
        color: Colors.teal,
      ),
      unselectedLabelTextStyle: const TextStyle(),
    );
  }
}
