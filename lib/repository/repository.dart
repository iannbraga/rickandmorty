import 'package:dio/dio.dart';
import 'package:rickandmorty/model/rick_morty_model.dart';

class Repository {
  final String urlInicial = 'https://rickandmortyapi.com/api/character';
  final dio = Dio();

  Future<List<RickMortyModel>> fetchAllCarachters() async {
    final response = await dio.get(urlInicial);

    final listaJson = response.data['results'] as List;

    List<RickMortyModel> personagens = [];

    for (var item in listaJson) {
      final resultado = RickMortyModel.fromJson(item);
      personagens.add(resultado);
    }
    return personagens;
  }
}
