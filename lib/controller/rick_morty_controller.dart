import 'package:rickandmorty/model/rick_morty_model.dart';
import 'package:rickandmorty/repository/repository.dart';

class RickMortyController {
  final _repository = Repository();
  List<RickMortyModel> personagens = [];
  bool status = false;

  Future getPersonagens() async {
    try {
      personagens = await _repository.fetchAllCarachters();
      for (int i = 0; i < personagens.length; i++) {
        if (personagens[i].status.toString().toLowerCase().contains('alive')) {
          status = true;
        } else {
          status = false;
        }
      }
    } catch (e) {
      print(e.hashCode);
    }
  }
}
