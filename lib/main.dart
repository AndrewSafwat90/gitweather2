import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitweather2/cubits/get-weather-cubit/get-weather-cubit.dart';
import 'package:gitweather2/views/home-view.dart';

void main() {
  runApp(const GitWeather2());
}

class GitWeather2 extends StatelessWidget {
  const GitWeather2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: false),
        home: HomeView(),
      ),
    );
  }
}
