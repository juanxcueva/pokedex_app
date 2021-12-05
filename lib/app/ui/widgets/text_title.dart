

import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Pokedex",
      style: Theme.of(context)
          .textTheme
          .headline4!
          .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}
