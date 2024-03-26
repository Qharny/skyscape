import 'package:flutter/material.dart';

class BottomNavigate extends StatelessWidget {
  const BottomNavigate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                //
              },
              icon: const Icon(Icons.favorite_border)),
          IconButton(
              onPressed: () {
                // User
              },
              icon: const Icon(Icons.account_circle_rounded)),
        ],
      ),
    );
  }
}
