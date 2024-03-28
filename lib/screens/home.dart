import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skyscape/constant/colors.dart';
import 'package:skyscape/screens/views/weather_view.dart';
import 'views/drawer.dart';
// import 'views/navigate.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool switchThemes = false;

  @override
  Widget build(BuildContext context) {
    var currentIndex = 0;
    return Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
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
        body: backgrounddisplay(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
            handleBottomNavigationIconPressed(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: primaryColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: primaryColor,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.format_align_left_rounded,
                color: primaryColor,
              ),
              label: 'List',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: primaryColor,
              ),
              label: 'Profile',
            ),
          ],
        )
        // const BottomNavigate(),
        );
  }

  Container backgrounddisplay() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          // ImageFiltered(
          //   imageFilter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
          //   child: Container(
          //     color: Colors.transparent,
          //   ),
          // ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Container(
              decoration: const BoxDecoration(color: Colors.transparent),
            ),
          ),
          const WeatherView(),
        ],
      ),
    );
  }

  void handleBottomNavigationIconPressed(int index) {
    print('Bottom navigation icon at index $index is pressed');
  }
}
