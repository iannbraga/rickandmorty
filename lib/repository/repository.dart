import 'package:dio/dio.dart';

class Repository {
  final urlInicial = 'https://rickandmortyapi.com/api/character';

  Future<List<RickMortyModel>> fetchAllCarachters() async {
    final dio = Dio();
    final response = await dio.get(urlInicial);
    var list = response.data['results'] as List;

    List<String> personagens = [];

    for (var item in list) {
      final personagem = RickMortyModel.fromJson(item);
      personagens.add(item);
    }
    return personagens;
  }
}
