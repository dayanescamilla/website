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
        drawerEdgeDragWidth: 1,
        drawerEnableOpenDragGesture: true,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        )
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
