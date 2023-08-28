import 'package:flutter/material.dart';

class GetintouchText extends StatelessWidget {
  final double height;
  final double width;
  final String name;
  const GetintouchText(
      {required this.height,
      required this.width,
      required this.name,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.82),
          borderRadius: BorderRadius.circular(4)),
      child: TextField(
        style: const TextStyle(color: Colors.white), // Set the text color
        decoration: InputDecoration(
          focusColor: Colors.white,

          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white), // Border color
          ),
          hintText: name, // Placeholder text
          hintStyle:
              const TextStyle(color: Colors.grey), // Placeholder text color
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white), // Border color
          ),
        ),
      ),
    );
  }
}
