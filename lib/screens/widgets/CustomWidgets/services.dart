import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/services_model.dart';

class Services01 extends StatefulWidget {
  final Services data;
  const Services01({required this.data, super.key});

  @override
  State<Services01> createState() => _Services01State();
}

class _Services01State extends State<Services01> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  height: 70,
                  width: 70,
                  //color: Colors.pink,
                  child: Image.asset(
                    widget.data.imageLink,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                widget.data.name,
                style: GoogleFonts.robotoMono(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  widget.data.description,
                  style: GoogleFonts.robotoMono(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
