import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitweather2/cubits/get-weather-cubit/get-weather-cubit.dart';
import 'package:gitweather2/models/wather-model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          weatherModel.cityName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        Text(
          'updated at 23:46',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/cloudy.png',
            ),
            Text(
              '17',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Column(
              children: [
                Text(
                  'Maxtemp: 24',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Mintemp: 16',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 32,
        ),
        Text(
          'Ligh Rain',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
      ]),
    );
  }
}
