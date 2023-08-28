import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/data.dart';

class MobileAboutMeText extends StatefulWidget {
  const MobileAboutMeText({super.key});

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
              'About Abubakar ',
              style: GoogleFonts.robotoMono(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'My name is Abubakar, and I\'m a passionate app developer specializing in Flutter. With a knack for crafting innovative and user-friendly applications, I thrive in dynamic and evolving environments. My expertise lies in turning ideas into digital realities, harnessing the power of code to create intuitive and impactful solutions. Beyond development, I also excel as a skilled public speaker, effectively conveying ideas and concepts. My journey as an app developer has been fueled by a commitment to excellence and a love for pushing boundaries.',
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
                "Download CV",
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
