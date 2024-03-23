import 'package:flutter/material.dart';
// import 'package:skyscape/constant/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool switchThemes = false;

  void _toggleTheme() {
    setState(() {
      switchThemes = !switchThemes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: AppTheme.theme(
        // context: context, lightTheme: Colors.blue, darkTheme: Colors.blue),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                print("The menu icon is pressed");
              },
            ),
            const Text(
              'SKYSCAPE',
              style: TextStyle(
                  // color: AppTheme.theme(
                  //     context: context,
                  //     darkTheme: Colors.black,
                  //     lightTheme: Colors.black),
                  ),
            ),
            IconButton(
              icon: Icon(
                switchThemes ? Icons.wb_sunny : Icons.nightlight_round,
                color: switchThemes ? Colors.white : Colors.black,
              ),
              onPressed: _toggleTheme,
            )
          ],
        ),
      ),
    );
  }
}
