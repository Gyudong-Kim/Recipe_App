import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/components/recipe_menu.dart';
import 'package:recipe_app/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _recipeAppBar(),
        body: const Column(
          children: [
            RecipeTitle(),
            RecipeMenu(),
          ],
        ));
  }
}

AppBar _recipeAppBar() {
  return AppBar(
    actions: [
      const Icon(Icons.search),
      _spacer(),
      const Icon(Icons.favorite_border, color: Colors.redAccent),
      _spacer(),
    ],
  );
}

Widget _spacer() {
  return const SizedBox(width: 15);
}
