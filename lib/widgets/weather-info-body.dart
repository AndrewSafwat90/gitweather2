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
    var image = weatherModel.image!.contains('http')
        ? weatherModel.image
        : 'http:${weatherModel.image}';
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
          'Updated at ${weatherModel.date.hour} : ${weatherModel.date.minute}',
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
            Image.network(
              image!,
            ),
            Text(
              weatherModel.temperature.round().toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Column(
              children: [
                Text(
                  'Maxtemp: ${weatherModel.maxtemp.round()}',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Mintemp: ${weatherModel.mintemp.round()}',
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
          weatherModel.weatherCondition,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
      ]),
    );
  }
}
