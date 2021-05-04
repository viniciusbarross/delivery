import 'package:delivery/componentes/itemlistview.dart';
import 'package:delivery/controller/produto_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = ProdutoController();

  _start() {
    return Container();
  }

  _sucess() {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: controller.produtos.length,
        itemBuilder: (context, index) {
          var produto = controller.produtos[index];
          return CustomListItem(produto: produto);
          //return ListTile(
          //title: Text(produto.nOMPRO),
          //
          //          );
        });
  }

  _loading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  _error() {
    return Center(
      child: ElevatedButton(
        child: Text('Tentar novamente'),
        onPressed: () {
          controller.getProdutos();
        },
      ),
    );
  }

  stateManegement(HomeState state) {
    switch (state) {
      case HomeState.error:
        return _error();
      case HomeState.loading:
        return _loading();
      case HomeState.start:
        return _start();
      case HomeState.sucess:
        return _sucess();
      default:
        return _start();
    }
  }

  @override
  void initState() {
    super.initState();
    controller.getProdutos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Delivery')),
      body: AnimatedBuilder(
        animation: controller.state,
        builder: (context, child) {
          return stateManegement(controller.state.value);
        },
      ),
    );
  }
}
