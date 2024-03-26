import 'package:flutter/material.dart';
import 'package:skyscape/constant/colors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // send the page back
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "General Settings",
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: const Text(
                'Default Location',
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to the theme page
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: const Text(
                'Theme',
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // create a pop up menu
                showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Select Theme'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            title: const Text('Light'),
                            onTap: () {
                              // change to light theme
                            },
                          ),
                          ListTile(
                            title: const Text('Dark'),
                            onTap: () {
                              // change to dark theme
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: const Text(
                'App Language',
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to the theme page
              },
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(),
            const Text(
              "About",
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.w700),
            ),
            ListTile(
              title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Version',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'V1.0.0',
                      style: TextStyle(fontSize: 15),
                    )
                  ]),
              onTap: () {
                // Navigate to the theme page
              },
            ),
            ListTile(
              title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Developer',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '©2024 Kabutey Manasseh',
                      style: TextStyle(fontSize: 15),
                    )
                  ]),
              onTap: () {
                // info about developer
              },
            ),
            ListTile(
              title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Open Source License',
                      style: TextStyle(fontSize: 20),
                    )
                  ]),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
