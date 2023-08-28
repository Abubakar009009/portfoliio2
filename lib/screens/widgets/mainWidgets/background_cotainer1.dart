import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio2/utils/extensions.dart';

class MainImage extends StatefulWidget {
  const MainImage({super.key});

  @override
  State<MainImage> createState() => _MainImageState();
}

class _MainImageState extends State<MainImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/mansitting.jpg'), // Replace with your image path
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hi  I\'M ABUBAKAR',
              style: GoogleFonts.robotoMono(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: context.screenConstraint().width > 800 ? 50 : 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: context.screenConstraint().width > 800
                      ? context.screenConstraint().width * 0.2
                      : context.screenConstraint().width * 0.1),
              child: Text(
                'Exploring the digital realm, crafting innovative app solutions that transcend expectations. With a passion for coding and an eye for design, I bring ideas to life',
                style: GoogleFonts.robotoMono(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: context.screenConstraint().width > 800 ? 0 : 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'I am a ',
                    style: GoogleFonts.robotoMono(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: 200.0,
                    child: DefaultTextStyle(
                      style: GoogleFonts.robotoMono(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText('App Developer',
                              speed: Duration(milliseconds: 200)),
                          TypewriterAnimatedText('Game Developer',
                              speed: Duration(milliseconds: 200)),
                          TypewriterAnimatedText('Web Developer',
                              speed: Duration(milliseconds: 200)),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            )
          ],
        ),
      ),
    );
  }
}
