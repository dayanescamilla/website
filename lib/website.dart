// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/theme/images.dart';
import 'package:website/widgets/navigation_bar/navigation_bar_w.dart';
import 'package:website/widgets/navigation_bar/routes.dart';

class Website extends StatefulWidget {
  const Website({Key? key}) : super(key: key);

  @override
  State<Website> createState() => _WebsiteState();
}

class _WebsiteState extends State<Website> {
  int _selectedIndex = 0;
  NavigationBarW? myWidgetNavigationBar;

  @override
  void initState() {
    super.initState();
    myWidgetNavigationBar = NavigationBarW(currentIndex: (i) {
      setState(() {
        _selectedIndex = i;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: const Color(0xff242424),
        bottomNavigationBar: sizingInformation.deviceScreenType ==
                    DeviceScreenType.mobile ||
                sizingInformation.deviceScreenType == DeviceScreenType.tablet
            ? myWidgetNavigationBar
            : null,
        body: Row(
          children: [
            if (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
              NavigationRail(
                indicatorColor: Colors.red.shade300,
                backgroundColor: Color(0xff2c242c),
                elevation: 2,
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                selectedIndex: _selectedIndex,
                destinations: const [
                  NavigationRailDestination(
                      icon: Icon(Icons.home_outlined, color: Colors.white),
                      label:
                          Text('Home', style: TextStyle(color: Colors.white))),
                  NavigationRailDestination(
                      icon: Icon(Icons.feed_outlined, color: Colors.white),
                      label: Text(
                        'About Me',
                        style: TextStyle(color: Colors.white),
                      )),
                  NavigationRailDestination(
                      icon: Icon(Icons.favorite_border_outlined,
                          color: Colors.white),
                      label: Text('Projects',
                          style: TextStyle(color: Colors.white))),
                  NavigationRailDestination(
                      icon: Icon(
                        Icons.contact_mail_outlined,
                        color: Colors.white,
                      ),
                      label: Text('Contact',
                          style: TextStyle(color: Colors.white))),
                ],

                labelType: NavigationRailLabelType.all,
                selectedLabelTextStyle: const TextStyle(
                  color: Colors.teal,
                ),

                unselectedLabelTextStyle: const TextStyle(),
                // Called when one tab is selected
                leading: Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xff2c242c),
                      child: Image.asset(logo),
                    ),
                  ],
                ),
              ),
            Expanded(
              child: Routes(index: _selectedIndex),
            ),
          ],
        ),
      ),
    );
  }
}
