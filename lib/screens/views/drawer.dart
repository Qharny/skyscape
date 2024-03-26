import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skyscape/constant/colors.dart';
import 'package:skyscape/screens/settings.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                color: trans,
                image: DecorationImage(
                  image: AssetImage('assets/image1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // blur image
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 5.2, sigmaY: 3),
                    child: Container(
                      color: blur,
                    ),
                  ),
                  const Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome to SKYSCAPE',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25.0,
                            color: white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Your climate companion',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                            color: white),
                      )
                    ],
                  )),
                ],
              )),
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
              // Navigate to the settings page
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SettingsPage()));
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
                Text('Help'),
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
                Icon(Icons.star_border_outlined),
                SizedBox(
                  width: 5,
                ),
                Text('Remove Ads'),
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
                Icon(Icons.exit_to_app_outlined),
                SizedBox(
                  width: 5,
                ),
                Text('Exit'),
              ],
            ),
            onTap: () {
              // pop up dialog( Do you want to exit)
              showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Exit'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Column(
                          children: [
                            const Text("Do you want to exit?"),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      exit(0);
                                    },
                                    child: const Text('Yes')),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('No')),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
