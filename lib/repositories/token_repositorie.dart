import 'package:dio/dio.dart';

class TokenRepository {
  Dio dio;
  final username = 'BorjaoService';
  final password = '02100873000100';
  final urltoken = 'http://177.86.175.200:3040/BorjaoService/login/auth/login';

  TokenRepository([Dio client]) : this.dio = client ?? Dio();

  Future<String> getToken() async {
    final body = '{"UserName":"$username","Password":"$password"}';
    final response = await dio.post(urltoken, data: body);
    final value = response.data as Map;
    final token = value['value'];
    return token;
  }
}
