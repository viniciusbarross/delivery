import 'package:delivery/model/produto_model.dart';
import 'package:delivery/repositories/produto_repositorie.dart';
import 'package:flutter/cupertino.dart';

class ProdutoController {
  List<ProdutoProm> produtos = [];
  final ProdutoRepository _repository;
  final state = ValueNotifier<HomeState>(HomeState.start);

  ProdutoController([ProdutoRepository repository])
      : _repository = repository ?? ProdutoRepository();

  Future getProdutos() async {
    state.value = HomeState.loading;
    try {
      produtos = await _repository.getProdutos();
      state.value = HomeState.sucess;
    } catch (e) {
      state.value = HomeState.error;
    }
  }
}

enum HomeState { start, loading, sucess, error }
