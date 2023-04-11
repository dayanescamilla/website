import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/theme/references.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      double titleSize =
          SizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 40
              : 60;
      double descriptionSize =
          SizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 18
              : 25;
      double sizeHightBanner =
          SizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 300
              : 400;
      double sizeWidthBanner =
          SizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 300
              : 600;

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GradientText(
                    txtTitle,
                    colors: const [
                      Colors.redAccent,
                      Colors.greenAccent,
                      Colors.blueAccent
                    ],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: titleSize,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    txtDescription,
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: descriptionSize),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  OutlinedButton.icon(
                    // ignore: deprecated_member_use
                    onPressed: () => launch(
                        linkSummary),
                    icon: const Icon(Icons.description_outlined),
                    label: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(txtBtnSummary,
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w100)),
                    ),
                  ),
                 /* Image.asset(imgDash,
                      height: sizeHightBanner, width: sizeWidthBanner), */
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
