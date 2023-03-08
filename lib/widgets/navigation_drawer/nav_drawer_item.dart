import 'package:flutter/material.dart';
import 'package:website/widgets/widgets.dart';

class NavDrawerItem extends StatelessWidget {
  final String? title;
  final IconData? iconData;
  const NavDrawerItem({Key? key, this.title, this.iconData, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(iconData),
          const SizedBox(width: 10,),
      ],),
    );
  }
}
