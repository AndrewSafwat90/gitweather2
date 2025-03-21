import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitweather2/cubits/get-weather-cubit/get-weather-states.dart';
import 'package:gitweather2/models/wather-model.dart';
import 'package:gitweather2/services/weather-service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(NoWeatherState());
  late WeatherModel weatherModel;
  getWeather({required String cityName}) async {
    try {
      WeatherModel weatherModel =
          await WeatherService(Dio()).getcurrentWeasync(cityName: cityName);
      emit(WeatherLoadedState());
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
