import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio2/utils/extensions.dart';

import '../CustomWidgets/getintouch_message.dart';
import '../CustomWidgets/getintouch_text.dart';

class ContactContainer extends StatelessWidget {
  const ContactContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/backmail.jpg'), // Replace with your image path
          fit: BoxFit.cover, // Adjust the fit as needed
        ),
      ),
      child: Container(
        color: Colors.grey.withOpacity(0.7),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.width * 0.03,
              horizontal: MediaQuery.of(context).size.width * 0.07),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get in Touch',
                  style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'For all the queries about me and my work just get in touch with me through a message',
                  style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  color: Colors.white70,
                  child: Container(
                    color: Colors.white.withOpacity(0.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
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
                                        MediaQuery.of(context).size.width * 0.3,
                                  ),
                                  GetintouchText(
                                    height: 50,
                                    name: 'Your Email',
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                  ),
                                  GetintouchText(
                                    height: 50,
                                    name: 'Your Phone',
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                  ),
                                ],
                              ),
                            ),
                            GetinTouchMessage(
                                height: 220,
                                width: MediaQuery.of(context).size.width * 0.4),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            // Code to launch resume
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(
                                    0), // Set border radius to 0
                              ),
                            ),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(0)),
                            fixedSize: MaterialStateProperty.all(Size(
                                context.screenConstraint().width * 0.15, 40)),
                          ),
                          child: Center(
                            // Center the text within the button
                            child: Text(
                              "Send Message",
                              style: GoogleFonts.robotoMono(
                                fontSize: 15,
                                color: Colors.black,
                              ),
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
