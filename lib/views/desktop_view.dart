import 'package:flutter/material.dart';
import 'package:website/screen/screens.dart';


class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 600,
              child: Row(
                children: const [
                  HomeScreen(),
                  Expanded(child: BannerScreen()),
                ],
              ),
            ),
            //const CardViewNeo(),
            Container(
                alignment: Alignment.center,
                height: 600,
                child: const AboutMeScreen()),
            Container(
              alignment: Alignment.center,
              height: 600,
              child: const ProjectsScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
