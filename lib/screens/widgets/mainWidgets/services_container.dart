import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio2/screens/widgets/CustomWidgets/services.dart';
import 'package:portfoliio2/utils/app_strings.dart';
import 'package:portfoliio2/utils/extensions.dart';

import '../../../data/data.dart';
import '../../../models/completedata_model.dart';
import '../project_widget.dart';

class ServicesContainer extends StatelessWidget {
  final List<Services> services;
  const ServicesContainer({required this.services, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.withOpacity(0.1),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 20),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                AppStrings.servicesText,
                style: GoogleFonts.robotoMono(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: context.screenConstraint().width * 0.9,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: MediaQuery.of(context).size.width > 1100
                        ? 3 //done at 3
                        : (MediaQuery.of(context).size.width > 1000
                            ? 2 //done at 2
                            : (MediaQuery.of(context).size.width > 900
                                ? 2 //done at 2
                                : (MediaQuery.of(context).size.width > 800
                                    ? 2 //done at 2
                                    : (MediaQuery.of(context).size.width > 700
                                        ? 2 // done at 2
                                        : (MediaQuery.of(context).size.width >
                                                600
                                            ? 2 // done at 2
                                            : (MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    500
                                                ? 2 // done at 2
                                                : (MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        400
                                                    ? 1 // done at 1
                                                    : 1 // done at 1
                                                ))))))),
                    childAspectRatio: MediaQuery.of(context).size.width > 1100
                        ? 1.4 //done
                        : (MediaQuery.of(context).size.width > 1000
                            ? 1.6 //done
                            : (MediaQuery.of(context).size.width > 900
                                ? 1.7 // done
                                : (MediaQuery.of(context).size.width > 800
                                    ? 1.55 //done
                                    : (MediaQuery.of(context).size.width > 700
                                        ? 1.3 //done
                                        : (MediaQuery.of(context).size.width >
                                                600
                                            ? 1 //done
                                            : (MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    500
                                                ? 0.75 // done
                                                : (MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        400
                                                    ? 1.4 // done
                                                    : 1.1 // done
                                                ))))))),
                  ),
                  itemCount: services.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Services01(data: services[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
