import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio2/models/completedata_model.dart';
import 'package:portfoliio2/screens/widgets/bottombar_custom.dart';
import 'package:portfoliio2/screens/widgets/mainWidgets/coding_skills_web.dart';
import 'package:portfoliio2/screens/widgets/mainWidgets/aboutme_container.dart';
import 'package:portfoliio2/screens/widgets/mainWidgets/background_cotainer1.dart';
import 'package:portfoliio2/screens/widgets/mainWidgets/coding_skillsmobile.dart';
import 'package:portfoliio2/screens/widgets/mainWidgets/contact_container.dart';
import 'package:portfoliio2/screens/widgets/mainWidgets/contact_containermobile.dart';
import 'package:portfoliio2/screens/widgets/mainWidgets/services_container.dart';
import 'package:portfoliio2/screens/widgets/project_widget.dart';
import 'package:portfoliio2/utils/app_strings.dart';
import 'package:portfoliio2/utils/extensions.dart';
import 'package:provider/provider.dart';
import '../constants/media_query.dart';
import '../utils/send_get_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<DataComplete> futureData;
  DataComplete? fadata;
  bool showData = true;
  @override
  void initState() {
    super.initState();
    // print('hello bedfore');
    futureData = context.read<SetGetData>().updateDataFromFirebase();
    futureData.then((data) {
      setState(() {
        //   fadata = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification notification) {
          notification.disallowIndicator();
          return false;
        },
        child: Stack(
          children: [
            ListView(
              children: [
                MainImage(
                  Aboutme: context.watch<SetGetData>().getData1.description,
                ),
                AboutMe(
                  aboutmeText: context.watch<SetGetData>().getData1.aboutMe,
                ),
                const SizedBox(height: 50),
                if (context.screenConstraint().width > 800)
                  CodingSkillsWeb(
                      skill: context.watch<SetGetData>().getData1.codingList),
                if (context.screenConstraint().width < 800)
                  CodingSkillsMobile(
                    skill1: context.watch<SetGetData>().getData1.codingList,
                  ),
                const SizedBox(height: 30),
                ServicesContainer(
                    services:
                        context.watch<SetGetData>().getData1.servicesList),
                SizedBox(height: GetScreenSize.getScreenWidth(context) * 0.08),
                Center(
                  child: Text(
                    AppStrings.flutterProjects,
                    style: GoogleFonts.robotoMono(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: GetScreenSize.getScreenWidth(context) * 0.03),
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
                      itemCount: context
                          .watch<SetGetData>()
                          .getData1
                          .projectsList
                          .length,
                      itemBuilder: (BuildContext context, int index) {
                        return ProjectWidget(
                          projectData: context
                              .watch<SetGetData>()
                              .getData1
                              .projectsList[index],
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
            if (context.watch<SetGetData>().fetchingData)
              Container(
                color: Colors.white,
                child: Center(child: CircularProgressIndicator()),
              ),
          ],
        ),
      ),
    );
  }
}
