import 'package:flutter/material.dart';
import 'package:skyscape/constant/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      appBar: AppBar(
        // backgroundColor: bgColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                print("The menu icon is pressed");
              },
            ),
            const Text('SKYSCAPE'),
            IconButton(
              icon: _isDarkMode
                  ? const Icon(Icons.wb_sunny)
                  : const Icon(
                      Icons.nightlight_round,
                      // color: white,
                    ),
              onPressed: _toggleTheme,
            )
          ],
        ),
      ),
    );
  }
}
