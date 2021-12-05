
import 'dart:convert';

import 'package:pokedex_app/app/domain/models/pokemon_model.dart';

class PokemonsResponse {
    PokemonsResponse({
        this.pokemon,
    });

    List<PokemonModel>? pokemon;

    factory PokemonsResponse.fromJson(String str) => PokemonsResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PokemonsResponse.fromMap(Map<String, dynamic> json) => PokemonsResponse(
        pokemon: List<PokemonModel>.from(json["pokemon"].map((x) => PokemonModel.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "pokemon": List<dynamic>.from(pokemon!.map((x) => x.toMap())),
    };
}

