

import 'package:dio/dio.dart';
import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:pokedex_app/app/data/resources/remote/pokemon_api.dart';

import 'app/data/repository_impl/pokemon_repository_impl.dart';
import 'app/domain/repository/pokemon_repository.dart';

void injectDependencies(){
  //var´s
final _dio =
      Dio();
  Get.i.lazyPut<Dio>(() => _dio);

  Get.i.lazyPut<PokemonRepository>(() => PokemonRepositoryImpl(PokemonAPI(),));



}