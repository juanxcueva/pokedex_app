import 'dart:convert';

import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:pokedex_app/app/domain/repository/pokemon_repository.dart';

class HomeController extends SimpleNotifier {
  final _pokeRepository = Get.i.find<PokemonRepository>();
  List? pokedex;


  Future<void> getPokemons() async {
    Map<String, dynamic> response = await _pokeRepository.getPokemons();
    if (response['error'] != null) {
      //print(response['error']);
    } else {
      var decodedJson = jsonDecode(response['data']);
      pokedex = decodedJson['pokemon'];
      //print(pokedex);
      notify(["pokemons"]);
    }
  }
}
