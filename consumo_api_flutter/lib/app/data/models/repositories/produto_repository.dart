import 'dart:convert';

import 'package:consumo_api_flutter/app/data/http/exceptions.dart';
import 'package:consumo_api_flutter/app/data/http/http_client.dart';
import 'package:consumo_api_flutter/app/data/models/produto.model.dart';

import '../produto.model.dart';

abstract class IProdutoRepository {
  Future<List<ProdutoModel>> getProdutos();
}

class ProdutoRepository implements IProdutoRepository {
  final IHttpClient client;

  ProdutoRepository({required this.client});

  @override
  Future<List<ProdutoModel>> getProdutos() async {
    final response = await client.get(url: 'https://dummyjson.com/products');

    if (response.statusCode == 200) {
      final List<ProdutoModel> produtos = [];

      final body = jsonDecode(response.body);

      body['products'].map((item) {
        final ProdutoModel produto = ProdutoModel.fromMap(item);
        produtos.add(produto);
      }).toList();

      return produtos;
      
    } else if (response.statusCode == 404) {
      throw NotFountException(message: 'A url informada não é válida');
    } else {
      throw Exception('Não foi possivel carregar os produtos');
    }
  }
}
