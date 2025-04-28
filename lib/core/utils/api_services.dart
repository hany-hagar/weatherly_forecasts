

import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl = 'https://api.weatherapi.com/v1/';
  final _endPoint = 'forecast.json?';
  final _key = '******************************';

  ApiServices();

  Future<Map<dynamic, dynamic>> fetchWeather({
    required String location,
    required String lang,
    String day = "7",
  }) async {
    Dio dio = Dio();

    Response response = await dio.get(
      '$_baseUrl$_endPoint',
      queryParameters: {
        'key': _key,
        'q': location,
        'days': day,
        'lang': lang,
      },
    );
    return response.data;
  }
}
