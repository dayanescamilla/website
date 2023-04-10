import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/images.dart';
import '../theme/texts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      double titleSize =
          SizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 40
              : 60; //Definir tamaño de titulo
      double sizeHightBanner =
          SizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 300
              : 400;
      double sizeWidthBanner =
          SizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 300
              : 600;

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
                    'Hello, I am Dayan',
                    colors: const [
                      Colors.redAccent,
                      Colors.greenAccent,
                      Colors.blueAccent
                    ],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: titleSize,
                        //fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Currently I am dedicated to the development of native android mobile applications as well as cross-platform development (Android, iOS, Desktop and Web) compiled into their native language with the Flutter framework with the help of the Dart programming language. In addition to studying the user experience and the user interface in order to create more intuitive and comfortable applications to use. The programming languages I use the most are Java, Dart and C#.',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  OutlinedButton.icon(
                    // ignore: deprecated_member_use
                    onPressed: () => launch(
                        'https://drive.google.com/uc?export=download&id=16-tbY6SRXfdI3b7JOKvSJ8_CIeyTWudK'),
                    icon: const Icon(Icons.description_outlined),
                    label: Text(txtButtonSummary,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300)),
                  ),
                  Image.asset(dash,
                      height: sizeHightBanner, width: sizeWidthBanner),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
