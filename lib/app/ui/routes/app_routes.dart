
import 'package:flutter/material.dart';
import 'package:pokedex_app/app/ui/pages/details/details_page.dart';
import 'package:pokedex_app/app/ui/pages/home/home_page.dart';
import 'package:pokedex_app/app/ui/pages/splash/splash_page.dart';
import 'package:pokedex_app/app/ui/routes/routes.dart';

Map<String, Widget Function(BuildContext)> routes={
  Routes.home:(_)=>const HomePage(),
  Routes.details:(_)=>const DetailsPage(),
  Routes.splash:(_)=>const SplashPage(),


};