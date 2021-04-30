import 'package:delivery/controller/token_controller.dart';
import 'package:delivery/model/produto_model.dart';
import 'package:delivery/repositories/token_repositorie.dart';
import 'package:dio/dio.dart';

class ProdutoRepository {
  Dio dio;
  final baseapi =
      'http://177.86.175.200:3040/BorjaoService/entities/produtoprom';
  final repository = TokenRepository();
  final url =
      'http://177.86.175.200:3040/BorjaoService/entities/produtoprom?\$top=10000';

  ProdutoRepository([Dio client]) : this.dio = client ?? Dio();

  Future<List<ProdutoProm>> getProdutos() async {
    final controller = TokenController(repository);
    final token = await controller.getToken();
    dio.options.headers['Authorization'] = 'Bearer $token';
    final response = await dio.get(url);
    final value = response.data as Map;
    final lista = value['value'] as List;
    return lista.map((json) => ProdutoProm.fromJson(json)).toList();
  }
}
