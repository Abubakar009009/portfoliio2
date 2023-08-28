import 'package:flutter/material.dart';

import '../../constants/media_query.dart';

class BottomBarCustom extends StatelessWidget {
  const BottomBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: GetScreenSize.getScreenWidth(context) * 0.3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.82),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: GetScreenSize.getScreenWidth(context) * 0.05,
            ),
            SizedBox(
              height: GetScreenSize.getScreenWidth(context) * 0.075,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/linkedin.png',
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: GetScreenSize.getScreenWidth(context) * 0.03,
                  ),
                  Image.asset(
                    'assets/images/instagram.png',
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: GetScreenSize.getScreenWidth(context) * 0.03,
                  ),
                  Image.asset(
                    'assets/images/github.png',
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            SizedBox(
              height: GetScreenSize.getScreenWidth(context) * 0.06,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Developed In 💙 with ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextSpan(
                    text: 'Flutter',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            const Center(
              child: Text(
                'Copyright ©2023 Muhammad Aubakar.',
                maxLines: null,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: GetScreenSize.getScreenWidth(context) * 0.02,
            )
          ],
        ),
      ),
    );
  }
}
