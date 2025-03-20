class WeaterModel {
  final String cityName;
  final String date;
  final String? image;
  final double temperature;
  final double maxtemp;
  final double mintemp;
  final String weatherCondition;

  WeaterModel(
      {required this.cityName,
      required this.date,
      required this.image,
      required this.temperature,
      required this.maxtemp,
      required this.mintemp,
      required this.weatherCondition});

  factory WeaterModel.fromJson(json) {
    return WeaterModel(
        cityName: json['location']['name'],
        date: json['current']['last_updated'],
        image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
        temperature: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
            ['text']);
  }
}
