import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:portfoliio2/data/dataList.dart';

import '../models/completedata_model.dart';

class SetGetData extends ChangeNotifier {
  bool fetchingData = true;
  DataComplete data1 = DataComplete(
    name: '',
    description: '',
    aboutMe: '',
    aboutMeImage: '',
    codingList: [],
    servicesList: [],
    projectsList: [],
  );
  DataComplete get getData1 => data1;

// Function to send data to Firebase
  Future<void> sendDataToFirebase(DataComplete data) async {
    CollectionReference dataCollection =
        FirebaseFirestore.instance.collection('data');

    await dataCollection.add({
      'name': data.name,
      'description': data.description,
      'aboutMe': data.aboutMe,
      'aboutMeImage': data.aboutMeImage,
      'codingList': data.codingList
          .map((coding) => {
                'imgLink': coding.imgLink,
                'percentage': coding.percentage,
                'name': coding.name,
              })
          .toList(),
      'servicesList': data.servicesList
          .map((service) => {
                'imgLink': service.imgLink,
                'name': service.name,
                'description': service.description,
              })
          .toList(),
      'projectsList': data.projectsList
          .map((project) => {
                'imageLink': project.imageLink,
                'projectName': project.projectName,
                'githubLink': project.githubLink,
              })
          .toList(),
    });
  }

  Future<DataComplete> updateDataFromFirebase() async {
    try {
      DocumentSnapshot snapshot = await FirebaseFirestore.instance
          .collection('data')
          .doc('eX4TNf8OoVlB6ZR77lpv')
          .get();

      data1 = DataComplete(
        name: snapshot['name'] ?? '',
        description: snapshot['description'] ?? '',
        aboutMe: snapshot['aboutMe'] ?? '',
        aboutMeImage: snapshot['aboutMeImage'] ?? '',
        codingList: (snapshot['codingList'] as List<dynamic>)
            .map(
              (coding) => CodingSkills(
                imgLink: coding['imgLink'] ?? '',
                percentage: coding['percentage'] ?? '',
                name: coding['name'] ?? '',
              ),
            )
            .toList(),
        servicesList: (snapshot['servicesList'] as List<dynamic>)
            .map(
              (service) => Services(
                imgLink: service['imgLink'] ?? '',
                name: service['name'] ?? '',
                description: service['description'] ?? '',
              ),
            )
            .toList(),
        projectsList: (snapshot['projectsList'] as List<dynamic>)
            .map(
              (project) => Projects(
                imageLink: project['imageLink'] ?? '',
                projectName: project['projectName'] ?? '',
                githubLink: project['githubLink'] ?? '',
              ),
            )
            .toList(),
      );
      fetchingData = false;
      notifyListeners();
      return data1;
    } catch (error) {
      data1 = data;
      fetchingData = false;
      notifyListeners();
      return data1;
    }
  }
}
