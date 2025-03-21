import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitweather2/cubits/get-weather-cubit/get-weather-cubit.dart';
import 'package:gitweather2/models/wather-model.dart';
import 'package:gitweather2/services/weather-service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Search"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
              child: TextField(
            onSubmitted: (value) async {
              var getweathercubit = BlocProvider.of<GetWeatherCubit>(context);
              getweathercubit.getWeather(cityName: value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                labelText: "Search",
                suffixIcon: Icon(Icons.search),
                hintText: "Enter City Name",
                hintStyle: TextStyle(color: Colors.grey.shade400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          )),
        ));
  }
}
