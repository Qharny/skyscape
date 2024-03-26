import 'package:flutter/material.dart';
import 'package:skyscape/constant/colors.dart';
import 'views/drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool switchThemes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: trans,
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
      drawer: const MyDrawer(),
      body: const SingleChildScrollView(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  // home
                },
                icon: const Icon(Icons.home)),
            IconButton(
                onPressed: () {
                  // settings
                },
                icon: const Icon(Icons.favorite_border)),
          ],
        ),
      ),
    );
  }
}
