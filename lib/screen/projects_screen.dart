// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/theme/references.dart';
import 'package:website/widgets/card_view/card_item_two.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Container(
        alignment: Alignment.topCenter,
        height: 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CardItemProject(
              assetImage: const AssetImage(imgProjectOne),
              inkWell: InkWell(
                onTap: () => launch(
                    'https://github.com/dayanescamilla/XCL_AgendaMedica'),
              ),
            ),
            CardItemProject(
              assetImage: const AssetImage(imgProjectTwo),
              inkWell: InkWell(
                onTap: () => launch(
                    'https://github.com/dayanescamilla/XCL_AgendaMedica'),
              ),
            ),
            CardItemProject(
              assetImage: const AssetImage(imgProjectOne),
              inkWell: InkWell(
                onTap: () => launch(
                    'https://github.com/dayanescamilla/XCL_AgendaMedica'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
