import 'package:flutter/material.dart';
import 'package:website/screen/screens.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              HomeScreen(),
              BannerScreen(),
              Divider(height: 2, color: Colors.white),
              AboutMeScreen(),
              ProjectsScreen(),
              ContactScreen(),
            ],
          ),
        )
    );

  }
}
