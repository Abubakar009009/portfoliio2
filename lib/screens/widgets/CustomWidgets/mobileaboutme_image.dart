import 'package:flutter/material.dart';

class MobileAboutMeImage extends StatefulWidget {
  const MobileAboutMeImage({super.key});

  @override
  State<MobileAboutMeImage> createState() => _MobileAboutMeImageState();
}

class _MobileAboutMeImageState extends State<MobileAboutMeImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      height: 500,
      width: MediaQuery.of(context).size.width,
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
                    width: MediaQuery.of(context).size.width - 100,
                    height: 390,
                    color: Colors.black,
                  )),
              Positioned(
                top: 10,
                left: 20,
                child: Container(
                  height: 390,
                  width: MediaQuery.of(context).size.width - 100,
                  child: Image.asset(
                    'assets/images/myprofile01.jpg',
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
