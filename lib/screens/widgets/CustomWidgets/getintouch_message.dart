import 'package:flutter/material.dart';

class GetinTouchMessage extends StatefulWidget {
  final double width;
  final double height;
  const GetinTouchMessage(
      {required this.width, required this.height, super.key});

  @override
  State<GetinTouchMessage> createState() => _GetinTouchMessageState();
}

class _GetinTouchMessageState extends State<GetinTouchMessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.82),
          borderRadius: BorderRadius.circular(4)),
      child: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: TextField(
          maxLines: 20,
          style: TextStyle(color: Colors.white), // Set the text color
          decoration: InputDecoration(
            focusColor: Colors.white,
            hintText: 'Your Message', // Placeholder text
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
