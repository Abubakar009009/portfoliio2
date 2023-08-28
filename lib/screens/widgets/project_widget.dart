import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio2/screens/widgets/CustomWidgets/custom_buttom.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/media_query.dart';
import '../../models/project_model.dart';

class ProjectWidget extends StatefulWidget {
  final Project projectData;
  const ProjectWidget({super.key, required this.projectData});

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  Color _buttonColor = Colors.black.withOpacity(0.7);
  bool showRadius = false;

  @override
  Widget build(BuildContext context) {
    Border myBorder;
    // Set this value according to your logic

    if (showRadius) {
      myBorder = Border.all(
        color: Colors.white.withOpacity(0.7),
        width: 20.0,
      );
    } else {
      myBorder = Border.all(
        color: Colors.transparent,
        width: 0,
      );
    }

    return MouseRegion(
      onEnter: (PointerEvent details) {
        setState(() {
          showRadius = true;
        });
      },
      onExit: (PointerEvent details) {
        setState(() {
          showRadius = false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Container(
          decoration: BoxDecoration(
            border: myBorder,
            color: Colors.grey.withOpacity(0.09),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      widget.projectData.imageLink,
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Flexible(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.projectData.name,
                          style: GoogleFonts.robotoMono(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                        SizedBox(
                          height: 40,
                          child: Row(
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5.0),
                                        child: Image.asset(
                                            'assets/images/github.png'),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5.0),
                                        child: Image.asset(
                                          'assets/images/projecticon.png',
                                          color: Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5.0),
                                        child: Image.asset(
                                          'assets/images/iosicon.png',
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (PointerEvent details) {
                                  setState(() {
                                    _buttonColor = Colors.black;
                                  });
                                },
                                onExit: (PointerEvent details) {
                                  setState(() {
                                    _buttonColor =
                                        Colors.black.withOpacity(0.7);
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 2,
                                    right: 4,
                                  ),
                                  child: CustomTextButton(
                                    height: 30,
                                    width: 100,
                                    buttonColor:
                                        MediaQuery.of(context).size.width > 700
                                            ? _buttonColor
                                            : Colors.black,
                                    buttonText: 'GitHub Link',
                                    fontColor: Colors.white,
                                    fontSize: 14,
                                    onTab: () async {
                                      final Uri url =
                                          Uri.parse(widget.projectData.link);
                                      await launchUrl(url);
                                    },
                                    radius: 10,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 4,
                                      horizontal: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
