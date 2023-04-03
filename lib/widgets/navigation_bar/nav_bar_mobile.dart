import 'package:flutter/material.dart';
import 'package:website/widgets/widgets.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      //margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          const NavBarLogo(),
          IconButton(
            style: const ButtonStyle(side: MaterialStatePropertyAll(BorderSide(color: Colors.transparent))),
            onPressed: () => const NavigationDrawerWidget(),
            icon: const Icon(Icons.menu, color: Colors.white,),
          ),

        ],
      ),
    );
  }
}
