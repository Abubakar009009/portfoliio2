import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio2/screens/widgets/CustomWidgets/coding_images.dart';

class CodingSkillsWeb extends StatelessWidget {
  const CodingSkillsWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 350,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1497864149936-d3163f0c0f4b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80'), // Replace with your image path
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
                    'Coding Skills',
                    style: GoogleFonts.robotoMono(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CodingImages(
                          image: 'assets/images/java.png',
                          language: 'Java',
                          percentage: '84%'),
                      CodingImages(
                          image: 'assets/images/csharp.png',
                          language: 'C# .Net',
                          percentage: '80%'),
                      CodingImages(
                          image: 'assets/images/pyhton.png',
                          language: 'Pyhton',
                          percentage: '75%'),
                      CodingImages(
                          image: 'assets/images/dart02.png',
                          language: 'Dart',
                          percentage: '90%'),
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
