import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitweather2/cubits/get-weather-cubit/get-weather-cubit.dart';
import 'package:gitweather2/cubits/get-weather-cubit/get-weather-states.dart';
import 'package:gitweather2/views/search-view.dart';
import 'package:gitweather2/widgets/no-weather-body.dart';
import 'package:gitweather2/widgets/weather-info-body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is NoWeatherState) {
            return NoWeatherBody();
          } else if (state is WeatherLoadedState) {
            return WeatherInfoBody();
          } else {
            return Text('There is no weather information');
          }
        },
      ),
    );
  }
}
