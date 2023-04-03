import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/theme/theme_website.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const NavBarItem({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      double menuSize =
          SizingInformation.deviceScreenType == DeviceScreenType.tablet ||
              SizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 15
              : 20;

      return Material(
        color: Colors.transparent, //Color transparente al dar clic
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10), //Borde botones
          child: Container(
            height: 40, //Altura de Container
            alignment: Alignment.center, //Texto centrado dentro de Container
            margin: const EdgeInsets.only(right: 5, left: 5), //Margen botones
            child: Text(
              title,
              /*style: ThemeWebsite.lightThemeData.textTheme.button*/ style:
                  TextStyle(
                      fontSize: menuSize,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
            ),
          ),
        ),
      );
    });
  }
}
