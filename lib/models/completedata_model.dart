class DataComplete {
  String name;
  String description;
  String aboutMe;
  String aboutMeImage;
  List<CodingSkills> codingList;
  List<Services> servicesList;
  List<Projects> projectsList;

  DataComplete({
    required this.name,
    required this.description,
    required this.aboutMe,
    required this.aboutMeImage,
    required this.codingList,
    required this.servicesList,
    required this.projectsList,
  });
}

class CodingSkills {
  String imgLink;
  String percentage;
  String name;

  CodingSkills({
    required this.imgLink,
    required this.percentage,
    required this.name,
  });
}

class Services {
  String imgLink;
  String name;
  String description;

  Services({
    required this.imgLink,
    required this.name,
    required this.description,
  });
}

class Projects {
  String imageLink;
  String projectName;
  String githubLink;

  Projects({
    required this.imageLink,
    required this.projectName,
    required this.githubLink,
  });
}
