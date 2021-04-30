import 'package:delivery/controller/produto_controller.dart';
import 'package:delivery/repositories/produto_repositorie.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final repository = ProdutoRepository();
  final controller = ProdutoController(repository);
  test('Obtem produtos', () async {
    await controller.getProdutos();
    expect(controller.produtos.isEmpty, false);
  });
}
