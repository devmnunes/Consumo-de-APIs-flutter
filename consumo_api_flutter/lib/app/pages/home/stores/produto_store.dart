import 'package:consumo_api_flutter/app/data/http/exceptions.dart';
import 'package:consumo_api_flutter/app/data/models/produto.model.dart';
import 'package:consumo_api_flutter/app/data/models/repositories/produto_repository.dart';
import 'package:flutter/cupertino.dart';

class ProdutoStore {
  final IProdutoRepository repository;
  // Variavel reativa para o loading
  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);

  // Variavel reativa para o state
  final ValueNotifier<List<ProdutoModel>> state =
      ValueNotifier<List<ProdutoModel>>([]);

  // Variavel reativa para o erro
  final ValueNotifier erro = ValueNotifier<String>('');

  ProdutoStore({required this.repository});

  Future getProdutos() async {
    isLoading.value = true;

    try {
      final result = await repository.getProdutos();
      state.value = result;
    } on NotFountException catch (e) {
      erro.value = e.message;
    } catch (e) {
      erro.value = e.toString();
    }

    isLoading.value = false;
  }
}
