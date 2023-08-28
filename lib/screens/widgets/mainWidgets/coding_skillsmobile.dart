import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio2/screens/widgets/CustomWidgets/coding_imagemobile.dart';

import '../CustomWidgets/coding_images.dart';

class CodingSkillsMobile extends StatefulWidget {
  const CodingSkillsMobile({super.key});

  @override
  State<CodingSkillsMobile> createState() => _CodingSkillsMobileState();
}

class _CodingSkillsMobileState extends State<CodingSkillsMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1497864149936-d3163f0c0f4b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80'), // Replace with your image path
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
                'Coding Skills',
                style: GoogleFonts.robotoMono(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CodingImagesMobile(
                      image: 'assets/images/java.png',
                      language: 'Java',
                      percentage: '84%'),
                  SizedBox(
                    height: 20,
                  ),
                  CodingImagesMobile(
                      image: 'assets/images/csharp.png',
                      language: 'C# .Net',
                      percentage: '80%'),
                  SizedBox(
                    height: 20,
                  ),
                  CodingImagesMobile(
                      image: 'assets/images/pyhton.png',
                      language: 'Pyhton',
                      percentage: '75%'),
                  SizedBox(
                    height: 20,
                  ),
                  CodingImagesMobile(
                      image: 'assets/images/dart02.png',
                      language: 'Dart',
                      percentage: '90%'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
