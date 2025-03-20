import 'package:flutter/material.dart';
import 'package:gitweather2/views/search-view.dart';
import 'package:gitweather2/widgets/no-weather-body.dart';
import 'package:gitweather2/widgets/weather-info-body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GitWeather2"),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SearchView();
                  },
                ));
              }),
        ],
      ),
      body: NoWeatherBody(),
    );
  }
}
