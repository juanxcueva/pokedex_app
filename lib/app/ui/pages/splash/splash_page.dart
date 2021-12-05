
import 'package:flutter/material.dart';
import 'package:pokedex_app/app/ui/pages/home/home_page.dart';
import 'package:pokedex_app/app/ui/routes/routes.dart';
import 'package:pokedex_app/app/ui/widgets/text_title.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Hero(child: TextTitle(),tag: 'logo',),
      ),
    );
  }

  void _init() async {
    await homeProvider.read.getPokemons();
    Navigator.pushReplacementNamed(context, Routes.home);
  }
}

