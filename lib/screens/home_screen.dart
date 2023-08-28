import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio2/screens/widgets/bottombar_custom.dart';
import 'package:portfoliio2/screens/widgets/mainWidgets/coding_skills_web.dart';
import 'package:portfoliio2/screens/widgets/mainWidgets/aboutme_container.dart';
import 'package:portfoliio2/screens/widgets/mainWidgets/background_cotainer1.dart';
import 'package:portfoliio2/screens/widgets/mainWidgets/coding_skillsmobile.dart';
import 'package:portfoliio2/screens/widgets/mainWidgets/contact_container.dart';
import 'package:portfoliio2/screens/widgets/mainWidgets/contact_containermobile.dart';
import 'package:portfoliio2/screens/widgets/mainWidgets/services_container.dart';

import 'package:portfoliio2/screens/widgets/project_widget.dart';
import 'package:portfoliio2/extras/mobile_services_widget.dart';
import 'package:portfoliio2/extras/web_services_widget.dart';
import 'package:portfoliio2/utils/extensions.dart';

import '../constants/media_query.dart';
import '../data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification notification) {
          notification.disallowIndicator();
          return false;
        },
        child: ListView(
          children: [
            const MainImage(),
            const AboutMe(),

            const SizedBox(
              height: 50,
            ),
            if (context.screenConstraint().width > 800) const CodingSkillsWeb(),
            if (context.screenConstraint().width < 800)
              const CodingSkillsMobile(),

            //  SkillsWidget(),
            const SizedBox(
              height: 30,
            ),
            const ServicesContainer(),
            SizedBox(height: GetScreenSize.getScreenWidth(context) * 0.08),
            Center(
              child: Text(
                'Flutter Projects',
                style: GoogleFonts.robotoMono(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: GetScreenSize.getScreenWidth(context) * 0.03,
            ),
            Center(
              child: SizedBox(
                width: context.screenConstraint().width * 0.9,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: MediaQuery.of(context).size.width > 1100
                        ? 3
                        : (MediaQuery.of(context).size.width > 700 ? 2 : 1),
                    childAspectRatio:
                        MediaQuery.of(context).size.width > 800 ? 1 : 0.9,
                  ),
                  itemCount: projectList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ProjectWidget(
                      projectData: projectList[index],
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: GetScreenSize.getScreenWidth(context) * 0.08),
            if (context.screenConstraint().width > 800)
              const ContactContainer(),
            if (context.screenConstraint().width < 800)
              const ContactContainerMobile(),
            const BottomBarCustom(),
          ],
        ),
      ),
    );
  }
}
