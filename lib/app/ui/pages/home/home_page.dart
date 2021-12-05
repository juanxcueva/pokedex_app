import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:pokedex_app/app/ui/pages/details/widgets/details_arguments.dart';
import 'package:pokedex_app/app/ui/pages/home/controller/home_controller.dart';
import 'package:pokedex_app/app/ui/routes/routes.dart';
import 'package:pokedex_app/app/ui/theme/app_colors.dart';
import 'package:pokedex_app/app/ui/widgets/text_title.dart';

final homeProvider = SimpleProvider((ref) => HomeController());

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -50,
            right: -50,
            child: Image.asset(
              "assets/images/pokeball.png",
              width: 200,
              fit: BoxFit.fitWidth,
            ),
          ),
          const Positioned(
              top: 80,
              left: 20,
              child: Hero(tag:"logo",child: TextTitle())),
          Positioned(
            top: 150,
            bottom: 0,
            width: size.width,
            child: Column(
              children: [
                Expanded(
                  child: Consumer(builder: (_, ref, __) {
                    final pokedex =
                        ref.watch(homeProvider.ids(() => ['pokemons'])).pokedex;
                    return pokedex != null
                        ? GridView.builder(
                          physics: const BouncingScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.4,
                            ),
                            // ignore: unnecessary_null_comparison
                            itemCount: pokedex.length,
                            itemBuilder: (context, index) {
                              var type = pokedex[index]["type"][0];
                              return InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, Routes.details,arguments: DetailsArguments(pokedex[index], type == 'Grass'
                                            ? AppColors.grassColor
                                            : type == 'Fire'
                                                ? AppColors.fireColor
                                                : type == 'Water'
                                                    ? AppColors.waterColor
                                                    : type == 'Electric'
                                                        ? AppColors.electricColor
                                                        : type == 'Rock'
                                                            ? Colors.grey
                                                            : type == 'Ground'
                                                                ? Colors.brown
                                                                : type ==
                                                                        'Psychic'
                                                                    ? Colors
                                                                        .indigo
                                                                    : type ==
                                                                            'Fighting'
                                                                        ? Colors
                                                                            .orange
                                                                        : type ==
                                                                                'Bug'
                                                                            ? Colors
                                                                                .lightGreenAccent
                                                                            : type == 'Ghost'
                                                                                ? Colors.deepPurple
                                                                                : type == 'Normal'
                                                                                    ? Colors.black26
                                                                                    : type == 'Posion'
                                                                                        ? Colors.purple
                                                                                        : Colors.purple, index));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 12),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: type == 'Grass'
                                            ? AppColors.grassColor
                                            : type == 'Fire'
                                                ? AppColors.fireColor
                                                : type == 'Water'
                                                    ? AppColors.waterColor
                                                    : type == 'Electric'
                                                        ? AppColors.electricColor
                                                        : type == 'Rock'
                                                            ? Colors.grey
                                                            : type == 'Ground'
                                                                ? Colors.brown
                                                                : type ==
                                                                        'Psychic'
                                                                    ? Colors
                                                                        .indigo
                                                                    : type ==
                                                                            'Fighting'
                                                                        ? Colors
                                                                            .orange
                                                                        : type ==
                                                                                'Bug'
                                                                            ? Colors
                                                                                .lightGreenAccent
                                                                            : type == 'Ghost'
                                                                                ? Colors.deepPurple
                                                                                : type == 'Normal'
                                                                                    ? Colors.black26
                                                                                    : type == 'Posion'
                                                                                        ? Colors.purple
                                                                                        : Colors.purple,
                                        borderRadius: const BorderRadius.all(Radius.circular(20))),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            bottom: -10,
                                            right: -10,
                                            child: Image.asset(
                                              "assets/images/pokeball.png",
                                              height: 100,
                                              fit: BoxFit.fitHeight,
                                            )),
                                        Positioned(
                                          top: 20,
                                          left: 10,
                                          child: Text(
                                            pokedex[index]['name'],
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                        Positioned(
                                          top: 45,
                                          left: 20,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.black26,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0,
                                                  right: 8.0,
                                                  bottom: 4,
                                                  top: 4),
                                              child: Text(
                                                type.toString(),
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 5,
                                          right: 5,
                                          child: Hero(
                                            tag: index,
                                            child: CachedNetworkImage(
                                              imageUrl: pokedex[index]['img'],
                                              height: 100,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            })
                        : const Center(
                            child: CircularProgressIndicator(),
                          );
                  }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

