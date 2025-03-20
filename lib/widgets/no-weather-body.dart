import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'No weather data available',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'You can search for a city 🔎🔎',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
