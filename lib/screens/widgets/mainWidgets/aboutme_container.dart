import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio2/screens/widgets/CustomWidgets/mobileaboutme_image.dart';
import 'package:portfoliio2/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/constants.dart';
import '../../../data/data.dart';
import '../CustomWidgets/aboutme_image.dart';
import '../CustomWidgets/aboutme_text.dart';
import '../CustomWidgets/mobileaboutme_text.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.screenConstraint().width > 800) {
      return Container(
        height: 500,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.withOpacity(0),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutmeText(),
            AboutmeImage(),
          ],
        ),
      );
    } else {
      return Container(
        height: 1000,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.withOpacity(0),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MobileAboutMeText(),
            MobileAboutMeImage(),
          ],
        ),
      );
    }
  }
}
