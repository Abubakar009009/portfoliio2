import '../models/completedata_model.dart';

DataComplete data = DataComplete(
    name: 'Hi  I\'M ABUBAKAR',
    description:
        'Exploring the digital realm, crafting innovative app solutions that transcend expectations. With a passion for coding and an eye for design, I bring ideas to life',
    aboutMe:
        'My name is Abubakar, and I\'m a passionate app developer specializing in Flutter. With a knack for crafting innovative and user-friendly applications, I thrive in dynamic and evolving environments. My expertise lies in turning ideas into digital realities, harnessing the power of code to create intuitive and impactful solutions. Beyond development, I also excel as a skilled public speaker, effectively conveying ideas and concepts. My journey as an app developer has been fueled by a commitment to excellence and a love for pushing boundaries.',
    aboutMeImage: 'assets/images/myprofile01.jpg',
    codingList: coding,
    servicesList: services,
    projectsList: projects);

List<CodingSkills> coding = [
  CodingSkills(
      imgLink: 'assets/images/java.png', percentage: '84%', name: 'Java'),
  CodingSkills(
      imgLink: 'assets/images/csharp.png', percentage: '80%', name: 'C# .Net'),
  CodingSkills(
      imgLink: 'assets/images/pyhton.png', percentage: '75%', name: 'Python'),
  CodingSkills(
      imgLink: 'assets/images/dart02.png', percentage: '90%', name: 'Dart'),
];

List<Services> services = [
  Services(
      name: 'App Development',
      description:
          'I specialize in crafting user-centric applications using Flutter,where I prioritize creating intuitive interfaces',
      imgLink: 'assets/images/developer.png'),
  Services(
      name: 'Web Development',
      description:
          'I crete web apps in flutter and other technologies that help user with responsivness and all the atractive UI',
      imgLink: 'assets/images/data.png'),
  Services(
      name: 'Game Development',
      description:
          'I create games in Unity multiplayer games as well that is very attractive and usable by user and player ',
      imgLink: 'assets/images/game-development.png'),
];

List<Projects> projects = [
  Projects(
      imageLink: 'assets/images/travelapp.jpeg',
      projectName: 'WanderHub (Travelling App)',
      githubLink: 'https://github.com/Abubakar009009/messaging-app'),
  Projects(
      imageLink: 'assets/images/ecommerence.png',
      projectName: 'TrekTrove (ECommerence Store)',
      githubLink: 'https://github.com/Abubakar009009/messaging-app'),
  Projects(
      imageLink: 'assets/images/chatapp.png',
      projectName: 'ChatMingle (Chatting app)',
      githubLink: 'https://github.com/Abubakar009009/messaging-app'),
  Projects(
      imageLink: 'assets/images/news.png',
      projectName: 'DestiFinder(News App in Urdu)',
      githubLink: 'https://github.com/Abubakar009009/messaging-app'),
];
