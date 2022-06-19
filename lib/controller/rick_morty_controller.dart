import 'package:rickandmorty/model/rick_morty_model.dart';
import 'package:rickandmorty/repository/repository.dart';

class RickMortyController {
  final _repository = Repository();
  List<RickMortyModel> personagens = [];

  Future getPersonagens() async {
    try {
      personagens = await _repository.fetchAllCarachters();
    } catch (e) {
      print(e.hashCode);
    }
  }
}
