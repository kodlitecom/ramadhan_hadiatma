// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          project.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Spacer(),
        Text(
          project.description!,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(height: 1),
        ),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'Read More>>',
            style: TextStyle(color: primaryColor),
          ),
        ),
      ]),
    );
  }
}
