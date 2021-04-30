import 'package:delivery/controller/token_controller.dart';
import 'package:delivery/repositories/token_repositorie.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final repository = TokenRepository();
  final controller = TokenController(repository);
  test('Retorna Token', () async {
    await controller.getToken();
    expect(controller.token.isNotEmpty, true);
  });
}
