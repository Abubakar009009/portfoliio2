import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio2/screens/widgets/CustomWidgets/coding_images.dart';
import 'package:portfoliio2/utils/app_images.dart';
import 'package:portfoliio2/utils/app_strings.dart';

import '../../../models/completedata_model.dart';

class CodingSkillsWeb extends StatelessWidget {
  final List<CodingSkills> skill;
  const CodingSkillsWeb({required this.skill, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 350,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              AppImages.codingBackground,
            ), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.7)),
          child: Column(
            children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    AppStrings.codingSkills,
                    style: GoogleFonts.robotoMono(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CodingImages(
                          image: skill[0].imgLink,
                          language: skill[0].name,
                          percentage: skill[0].percentage),
                      CodingImages(
                          image: skill[1].imgLink,
                          language: skill[1].name,
                          percentage: skill[1].percentage),
                      CodingImages(
                          image: skill[2].imgLink,
                          language: skill[2].name,
                          percentage: skill[2].percentage),
                      CodingImages(
                          image: skill[3].imgLink,
                          language: skill[3].name,
                          percentage: skill[3].percentage),
                    ],
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
