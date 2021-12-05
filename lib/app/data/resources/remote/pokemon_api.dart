import 'package:dio/dio.dart';
import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:pokedex_app/app/data/resources/local/error_handler.dart';

class PokemonAPI {
  final _dio = Get.i.find<Dio>();
  Future<Map<String, dynamic>> getPokemons() async {
    Map<String, dynamic> newResponse;
    try {
      final response = await _dio.get(
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json',
        options: Options(
          sendTimeout: 3000,
          receiveTimeout: 5000,
        ),
      );
      newResponse = returnResponse(response);
    } on DioError catch (e) {
      newResponse = returnResponse(e.response);
    }
    return newResponse;
  }
}
