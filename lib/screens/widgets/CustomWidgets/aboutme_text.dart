import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio2/utils/app_strings.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/data.dart';

class AboutmeText extends StatefulWidget {
  final String Text1;
  const AboutmeText({required this.Text1, super.key});

  @override
  State<AboutmeText> createState() => _AboutmeTextState();
}

class _AboutmeTextState extends State<AboutmeText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height,
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
              widget.Text1,
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
