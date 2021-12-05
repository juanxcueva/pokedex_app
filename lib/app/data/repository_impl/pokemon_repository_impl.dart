

import 'package:pokedex_app/app/data/resources/remote/pokemon_api.dart';
import 'package:pokedex_app/app/domain/repository/pokemon_repository.dart';

class PokemonRepositoryImpl extends PokemonRepository{
  final PokemonAPI _api;
  PokemonRepositoryImpl(this._api);


  @override
  Future<Map<String, dynamic>> getPokemons()=>_api.getPokemons();
  

}