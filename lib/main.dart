import 'package:flutter/material.dart';
import 'package:skyscape/screens/splash_screen.dart';
import 'package:flutter_theme_manager/flutter_theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return themeManager(themeBuilder: (theme) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        theme: theme,
      );
    });
  }
}
