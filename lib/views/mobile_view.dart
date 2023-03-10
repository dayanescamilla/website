import 'package:flutter/material.dart';
import 'package:website/screen/screens.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              HomeScreen(),
              BannerScreen(),
            ],
          ),
        )
    );

  }
}
