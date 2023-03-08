import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/theme/theme_website.dart';
import 'package:website/widgets/widgets.dart';

class Website extends StatelessWidget {
  const Website({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          backgroundColor: ThemeWebsite.black,
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? const NavigationDrawerWidget()
              : null,
          body: Column(
            children: const [
              NavigationBarWidget()
            ],
          ),
    ),
    );

      Scaffold(
      backgroundColor: ThemeWebsite.black,
      body: Column(
        children: const [
          NavigationBarWidget(),
        ],
      ),
    );
  }
}
