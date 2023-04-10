import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/theme/references.dart';
import 'package:website/theme/images.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
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
        alignment: Alignment.center,
        width: 500,
        child:
            Image.asset(imgDash, height: sizeHightBanner, width: sizeWidthBanner),
      );
    });
  }
}
