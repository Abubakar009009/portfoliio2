import 'package:flutter/material.dart';
import 'package:portfoliio2/screens/widgets/mainWidgets/skills_widget.dart';

import '../constants/constants.dart';
import '../data/data.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  Color headingColor = Colors.black;
  Color textColor = Colors.black;
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Experience",
              style: kSectionTitleText,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(aboutWorkExperience),
            const Divider(),
            Text("About Me", style: kSectionTitleText),
            const SizedBox(
              height: 10,
            ),
            Text(aboutMeSummary),
          ],
        ),
        SkillsWidget(),
      ],
    );
  }
}
