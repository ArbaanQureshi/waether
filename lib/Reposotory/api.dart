import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:waether/model/weather_model.dart';

class ApiService {
  final url ='https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=459403e1edd81c218e6164c285ce9b6c';

  Future<WeatherApi> getPost() async {
    try {
      Response response;
      var dio = Dio();
      response = await dio.get(url);
      if (response.statusCode == 200) {
        var json = response.data;
        var data = WeatherApi.fromJson(json);
        print(data);
        return data;
      } else {
        throw "Someting Went Wrong ${response.statusCode}";
      }
    } catch (e) {
      rethrow;
    }
  }
}
