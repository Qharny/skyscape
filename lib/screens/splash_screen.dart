import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skyscape/constant/colors.dart';
import 'package:skyscape/screens/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    timer(); // a timer function
  }

  void timer() {
    const duration = Duration(seconds: 5);

    Timer(duration, () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: accentColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.sunny_snowing,
            color: white,
            size: 70.0,
          ),
          AnimatedDefaultTextStyle(
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              duration: Duration(seconds: 10),
              child: Text("SKYSCAPE")),
          SizedBox(height: 10.0),
          CircularProgressIndicator(
            color: white,
          )
        ],
      )),
    );
  }
}
