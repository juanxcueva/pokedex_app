import 'package:flutter/material.dart';
import 'package:pokedex_app/app/ui/routes/app_routes.dart';
import 'package:pokedex_app/app/ui/routes/routes.dart';
import 'package:flutter_meedu/router.dart' as router;


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex APP',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      routes: routes,
      navigatorObservers: [
        router.observer,
      ],
    );
  }
}
