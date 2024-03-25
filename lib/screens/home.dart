import 'package:flutter/material.dart';
import 'package:skyscape/constant/colors.dart';
// import 'package:skyscape/constant/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool switchThemes = false;

  // code to switch theme
  // void _toggleTheme() {
  //   setState(() {
  //     switchThemes = !switchThemes;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  // search
                },
                icon: const Icon(Icons.search)),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: accentColor,
              ),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome!',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25.0,
                        color: white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'User',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25.0,
                        color: white),
                  )
                ],
              )),
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Settings'),
                ],
              ),
              onTap: () {
                // Handle Option 1
              },
            ),
            const Divider(),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.help_outline_sharp),
                  SizedBox(
                    width: 5,
                  ),
                  Text('About'),
                ],
              ),
              onTap: () {
                // Handle Option 1
              },
            ),
            const Divider(),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.question_answer),
                  SizedBox(
                    width: 5,
                  ),
                  Text('FAQ'),
                ],
              ),
              onTap: () {
                // Handle Option 1
              },
            ),
          ],
        ),
      ),
    );
  }
}
