import 'package:delivery/repositories/token_repositorie.dart';

class TokenController {
  final TokenRepository _repository;
  String token;
  TokenController([TokenRepository repository])
      : _repository = repository ?? TokenRepository();

  Future<String> getToken() async {
    //state.value = HomeState.loading;
    try {
      token = await _repository.getToken();
      return token;
      //state.value = HomeState.sucess;
    } catch (e) {
      return '';
      //state.value = HomeState.error;
    }
  }
}
