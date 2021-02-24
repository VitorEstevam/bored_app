import 'package:dio/dio.dart';

class BoredApi {
  Dio dio = Dio();
  String url = "http://www.boredapi.com";

  Future<Response> getSingleActivity() async {
    Response response = await dio.get('$url/api/activity/');
    return response;
  }
}
