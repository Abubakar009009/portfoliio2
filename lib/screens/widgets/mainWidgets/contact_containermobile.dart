import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio2/utils/app_images.dart';
import 'package:portfoliio2/utils/app_strings.dart';
import 'package:portfoliio2/utils/extensions.dart';

import '../CustomWidgets/getintouch_message.dart';
import '../CustomWidgets/getintouch_text.dart';

class ContactContainerMobile extends StatelessWidget {
  const ContactContainerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              AppImages.mailBackground), // Replace with your image path
          fit: BoxFit.cover, // Adjust the fit as needed
        ),
      ),
      child: Container(
        color: Colors.grey.withOpacity(0.5),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.width * 0.03,
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.getInTouch,
                  style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  AppStrings.getInTouchdescription,
                  style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.white70),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 700,
                    color: Colors.white.withOpacity(0.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 280,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GetintouchText(
                                    height: 50,
                                    name: 'Your Name',
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                  ),
                                  GetintouchText(
                                    height: 50,
                                    name: 'Your Email',
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                  ),
                                  GetintouchText(
                                    height: 50,
                                    name: 'Your Phone',
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                  ),
                                ],
                              ),
                            ),
                            GetinTouchMessage(
                                height: 250,
                                width: MediaQuery.of(context).size.width * 0.7),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            // Code to launch resume
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.white), // Set the background color
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    0), // Set the border radius
                                side: const BorderSide(
                                    color:
                                        Colors.black), // Set the border color
                              ),
                            ),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(0)),
                            fixedSize: MaterialStateProperty.all(Size(
                                context.screenConstraint().width * 0.5, 50)),
                          ),
                          child: Text(
                            "Send Message",
                            style: GoogleFonts.robotoMono(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
