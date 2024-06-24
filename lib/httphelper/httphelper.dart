import 'package:dio/dio.dart';

class HttpHelper {
  static request(String url) async {
    final dio = Dio();

    final response = await dio.get(
        "https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=5584a3127beacbc816435070046cbb17");

    print("Response=================>${response.data}");
  }
}
