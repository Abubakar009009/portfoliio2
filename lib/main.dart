import 'package:flutter/material.dart';
import 'package:portfoliio2/screens/home_screen.dart';
import 'package:portfoliio2/extras/project_widget_provider.dart';
import 'package:provider/provider.dart';
import 'package:device_preview/device_preview.dart'; // Import the package

import 'constants/constants.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProjectWidgetProvider(),
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
