import 'package:flutter/material.dart';
import 'package:website/widgets/navigation_bar/nav_bar_item.dart';
import 'package:website/widgets/navigation_bar/nav_bar_logo.dart';

class NavBarDesktopTablet extends StatelessWidget {
  const NavBarDesktopTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 20), //Margen Container
      height: 80,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const NavBarLogo(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          NavBarItem(title: 'Home', onTap: () {  },),
          NavBarItem(title: 'Projects', onTap: () {  },),
          NavBarItem(title: 'About Me', onTap: () {  },),
        ],),
      ],),
    );
  }
}
