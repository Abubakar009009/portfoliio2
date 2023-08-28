import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CodingImagesMobile extends StatelessWidget {
  final String image;
  final String percentage;
  final String language;
  const CodingImagesMobile(
      {required this.image,
      required this.language,
      required this.percentage,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width * 0.8,
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
          Text(percentage,
              style: GoogleFonts.lora(
                // Using Latin Modern Sans font
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
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
