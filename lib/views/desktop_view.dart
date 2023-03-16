import 'package:flutter/material.dart';
import 'package:website/screen/about_me_screen.dart';
import 'package:website/screen/screens.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: const [
                HomeScreen(),
                Expanded(child: BannerScreen()),
              ],
            ),
            const AboutMeScreen(),
          ],
        ),
      ),
    );
  }
}
