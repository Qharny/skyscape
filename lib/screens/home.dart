import 'package:flutter/material.dart';
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
    );
  }
}
