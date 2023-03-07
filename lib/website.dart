import 'package:flutter/material.dart';
import 'package:website/theme/theme_website.dart';
import 'package:website/widgets/widgets.dart';

class Website extends StatelessWidget {
  const Website({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeWebsite.black,
      body: Column(
        children: const [
          NavigationBarWidget(),
        ],
      ),
    );
  }
}
