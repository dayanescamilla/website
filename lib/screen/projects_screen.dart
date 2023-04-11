// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/theme/references.dart';
import 'package:website/widgets/card_view/card_item_two.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          alignment: Alignment.center,
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CardItemTwo(
                assetImage: const AssetImage(imgProjectOne),
                inkWell: InkWell(
                  onTap: () => launch(urlRepositoryOne),
                ),
              ),
              CardItemTwo(
                assetImage: const AssetImage(imgProjectTwo),
                inkWell: InkWell(
                  onTap: () => launch(
                      urlRepositoryTwo),
                ),
              ),
              CardItemTwo(
                assetImage: const AssetImage(imgProjectThree),
                inkWell: InkWell(
                  onTap: () => launch(urlRepositoryThree),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
