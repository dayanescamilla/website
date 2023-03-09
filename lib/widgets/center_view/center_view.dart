import 'package:flutter/material.dart';

class CenterView extends StatelessWidget {
  final Widget child;
  const CenterView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200), child: child),
    );
  }
}
