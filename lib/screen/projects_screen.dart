import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffececec),
      padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
      child: const Card(
        color: Color(0xffececec),
        child: Text('data'),
      ),
    );
  }
}
