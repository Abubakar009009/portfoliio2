import 'package:flutter/material.dart';
import 'package:portfoliio2/constants/media_query.dart';

import '../models/services_model.dart';

class ServicesWidget extends StatelessWidget {
  final Services data;
  const ServicesWidget({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 8, right: 18, bottom: 8),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Card(
            elevation: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                    child: CircleAvatar(
                      radius: 30, // Adjust the radius as needed
                      backgroundColor: Colors.blue,

                      // Set the image color
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.blue, // Set the border color
                            width: 2, // Set the border width
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            data.imageLink,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, top: 20, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.name,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: GetScreenSize.getScreenWidth(context) * 0.05,
                        ),
                        Text(
                          data.description,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
