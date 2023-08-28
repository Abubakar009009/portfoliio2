import 'package:flutter/material.dart';
import 'package:portfoliio2/utils/app_images.dart';

class AboutmeImage extends StatefulWidget {
  const AboutmeImage({super.key});

  @override
  State<AboutmeImage> createState() => _AboutmeImageState();
}

class _AboutmeImageState extends State<AboutmeImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      width: MediaQuery.of(context).size.width / 2,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20.0, right: 40, top: 40, bottom: 40),
        child: Container(
          // color: Colors.pink,
          child: Stack(
            children: [
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 100,
                    height: 390,
                    color: Colors.black,
                  )),
              Positioned(
                top: 10,
                left: 20,
                child: Container(
                  height: 390,
                  width: MediaQuery.of(context).size.width / 2 - 100,
                  child: Image.asset(
                    AppImages.aboutmeImage,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
