import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:gitweather2/models/wather-model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '6058a2c4090d42d0b45135146231605';
  WeatherService(this.dio);
  Future<WeatherModel> getcurrentWeasync({required String cityName}) async {
    try {
      Response response =
          await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);

      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'OOps something went wrong , try later 😌';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('An unexpected error occurred: $e');
    }
  }
}
