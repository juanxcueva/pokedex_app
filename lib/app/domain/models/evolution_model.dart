import 'dart:convert';

class EvolutionModel {
    EvolutionModel({
        this.num,
        this.name,
    });

    String? num;
    String? name;

    factory EvolutionModel.fromJson(String str) => EvolutionModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory EvolutionModel.fromMap(Map<String, dynamic> json) => EvolutionModel(
        num: json["num"],
        name: json["name"],
    );

    Map<String, dynamic> toMap() => {
        "num": num,
        "name": name,
    };
}