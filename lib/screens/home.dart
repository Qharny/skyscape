import 'package:flutter/material.dart';
import 'package:skyscape/constant/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: bgColor,
        title: const Text('SKYSCAPE'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print("The menu icon is pressed");
          },
        ),
      ),
    );
  }
}
