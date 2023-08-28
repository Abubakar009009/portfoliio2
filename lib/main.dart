import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfoliio2/firebase_options.dart';
import 'package:portfoliio2/screens/home_screen.dart';
import 'package:portfoliio2/extras/project_widget_provider.dart';
import 'package:portfoliio2/utils/send_get_data.dart';
import 'package:provider/provider.dart';
import 'package:device_preview/device_preview.dart'; // Import the package

import 'constants/constants.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensure that Flutter is initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Initialize Firebase

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SetGetData()),
        ChangeNotifierProvider(create: (context) => ProjectWidgetProvider()),
        // Add more providers here
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: elevatedButtonThemeData,
      ),
      home: const HomeScreen(),
      locale: DevicePreview.locale(
          context), // Add this line to support locale changes
      builder:
          DevicePreview.appBuilder, // Add this line to enable device preview
    );
  }
}
