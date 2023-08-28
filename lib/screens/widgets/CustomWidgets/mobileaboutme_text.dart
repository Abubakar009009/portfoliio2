import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio2/utils/app_strings.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/data.dart';

class MobileAboutMeText extends StatefulWidget {
  final String text;
  const MobileAboutMeText({required this.text, super.key});

  @override
  State<MobileAboutMeText> createState() => _MobileAboutMeTextState();
}

class _MobileAboutMeTextState extends State<MobileAboutMeText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      //color: Colors.amber,
      child: Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 20, top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.aboutName,
              style: GoogleFonts.robotoMono(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              widget.text,
              style: GoogleFonts.robotoMono(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400),
            ),
            Expanded(
              child: SizedBox(),
            ),
            ElevatedButton(
              onPressed: () async {
                // Code to launch resume
                final Uri url = Uri.parse(resumeLink);
                await launchUrl(url);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Colors.white), // Set the background color
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(0), // Set the border radius
                    side:
                        BorderSide(color: Colors.black), // Set the border color
                  ),
                ),
                fixedSize: MaterialStateProperty.all(Size(200, 50)),
              ),
              child: Text(
                AppStrings.downloadCV,
                style: GoogleFonts.robotoMono(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
