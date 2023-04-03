import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/theme/images.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      double logoSize =
          SizingInformation.deviceScreenType == DeviceScreenType.tablet
              ? 25
              : 30; //Definir tamaño de logo

      return Image.asset(logoTwo);
      // return Text(
      //   'AS',
      //   style: TextStyle(fontSize: logoSize, color: Colors.white),
      // );
    });
  }
}
