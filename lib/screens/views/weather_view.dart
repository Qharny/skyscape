import 'package:flutter/material.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    // a session to display the location and weather data
    return Card(
      borderOnForeground: true,
      elevation: 4,
      margin: EdgeInsets.all(
        MediaQuery.of(context).size.width * .05,
      ),
    );
  }
}
