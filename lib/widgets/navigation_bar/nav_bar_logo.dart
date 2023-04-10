import 'package:flutter/material.dart';
import 'package:website/theme/references.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(logoTwo);
  }
}
