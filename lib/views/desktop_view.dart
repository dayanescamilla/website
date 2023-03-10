import 'package:flutter/material.dart';
import 'package:website/screen/screens.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Expanded(child: Row(
          children: [
            HomeScreen(),
            SizedBox(width: 50),
            BannerScreen(),
            //Image.asset('banner.jpg')
            //Image(image: 'assets/banner.jpg'),
          ],
        ))
      ],
    );
  }
}
