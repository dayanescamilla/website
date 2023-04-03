import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/theme/images.dart';
import 'package:website/widgets/card_view/card_item_project.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CardItemProject(
            assetImage: const AssetImage(projectOne),
            inkWell: InkWell(onTap: () => launch('https://github.com/dayanescamilla/XCL_AgendaMedica'),
            ),
          ),
          CardItemProject(
            assetImage: const AssetImage(projectOne),
            inkWell: InkWell(onTap: () => launch('https://github.com/dayanescamilla/XCL_AgendaMedica'),
            ),
          ),
          CardItemProject(
            assetImage: const AssetImage(projectOne),
            inkWell: InkWell(onTap: () => launch('https://github.com/dayanescamilla/XCL_AgendaMedica'),
            ),
          ),
        ],
      ),
    );
  }
}
