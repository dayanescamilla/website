import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      double sizeHightBanner =
          SizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 300
              : 400;
      double sizeWidthBanner =
          SizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 300
              : 600;

      return Container(
        width: 500,
        child: Image.asset('flutter_dash.png',
            height: sizeHightBanner, width: sizeWidthBanner),
      );
    });
  }
}
