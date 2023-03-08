import 'package:flutter/material.dart';
import 'package:website/theme/theme_website.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const NavBarItem({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, //Color transparente al dar clic
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10), //Borde botones
        child: Container(
          height: 40, //Altura de Container
          alignment: Alignment.center, //Texto centrado dentro de Container
          margin: const EdgeInsets.only(right: 10, left: 10), //Margen botones
            child:
            Text(title, style: ThemeWebsite.lightThemeData.textTheme.button),
        ),
      ),
    );
  }
}
