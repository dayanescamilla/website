import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/theme/theme_website.dart';
import 'package:website/views/views.dart';
import 'package:website/widgets/center_view/center_view.dart';
import 'package:website/widgets/widgets.dart';

class Website extends StatelessWidget {
  const Website({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: const Color(0xff242424),
        //Colors.black87,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawerWidget()
            : null,
        body: CenterView(
          child: Column(
            children: [
              const NavigationBarWidget(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: const MobileView(),
                  desktop: const DesktopView(),
                  tablet: const TabletView(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
