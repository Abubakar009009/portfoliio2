import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CodingImages extends StatelessWidget {
  final String image;
  final String percentage;
  final String language;
  const CodingImages(
      {required this.image,
      required this.language,
      required this.percentage,
      super.key});

  @override
  Widget build(BuildContext context) {
    double convertedPercentage = double.parse(percentage.replaceAll('%', ''));
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.15,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.7),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 100,
            width: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          // Text(percentage,
          //     style: GoogleFonts.lora(
          //       // Using Latin Modern Sans font
          //       fontSize: 20,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.white,
          //     )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Countup(
                begin: 0,
                end: convertedPercentage,
                duration: Duration(seconds: 1),
                style: GoogleFonts.lora(
                  // Using Latin Modern Sans font
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                '%',
                style: GoogleFonts.lora(
                  // Using Latin Modern Sans font
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Text(
            language,
            style: GoogleFonts.montserrat(
              // Using Latin Modern Sans font
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
