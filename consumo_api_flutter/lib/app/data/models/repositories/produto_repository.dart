import 'package:consumo_api_flutter/app/data/models/produto.model.dart';

abstract class IProdutoRepository {
  Future<List<ProdutoModel>> getProdutos();
}

class ProdutoRepository implements IProdutoRepository {
  @override
  Future<List<ProdutoModel>> getProdutos() {
    // TODO: implement getProdutos
    throw UnimplementedError();
  }
  
}