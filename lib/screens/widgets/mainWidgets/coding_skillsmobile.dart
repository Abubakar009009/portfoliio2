import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio2/screens/widgets/CustomWidgets/coding_imagemobile.dart';
import 'package:portfoliio2/utils/app_images.dart';
import 'package:portfoliio2/utils/app_strings.dart';

import '../../../models/completedata_model.dart';
import '../CustomWidgets/coding_images.dart';

class CodingSkillsMobile extends StatelessWidget {
  final List<CodingSkills> skill1;
  const CodingSkillsMobile({required this.skill1, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              AppImages.codingBackground), // Replace with your image path
          fit: BoxFit.cover,
        ),
      ),
      width: MediaQuery.of(context).size.width,
      child: Container(
        //height: 1000,
        color: Colors.black.withOpacity(0.5),
        child: Column(
          children: [
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
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CodingImagesMobile(
                      image: skill1[0].imgLink,
                      language: skill1[0].name,
                      percentage: skill1[0].percentage),
                  SizedBox(
                    height: 20,
                  ),
                  CodingImagesMobile(
                      image: skill1[1].imgLink,
                      language: skill1[1].name,
                      percentage: skill1[1].percentage),
                  SizedBox(
                    height: 20,
                  ),
                  CodingImagesMobile(
                      image: skill1[2].imgLink,
                      language: skill1[2].name,
                      percentage: skill1[2].percentage),
                  SizedBox(
                    height: 20,
                  ),
                  CodingImagesMobile(
                      image: skill1[3].imgLink,
                      language: skill1[3].name,
                      percentage: skill1[3].percentage),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
