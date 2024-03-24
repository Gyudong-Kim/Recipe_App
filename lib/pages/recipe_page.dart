import 'package:flutter/material.dart';
import 'package:recipe_app/components/recipe_list_item.dart';
import 'package:recipe_app/components/recipe_menu.dart';
import 'package:recipe_app/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _recipeAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: const [
              RecipeTitle(),
              RecipeMenu(),
              RecipeListItem(title: 'Coffee', image: 'coffee'),
              RecipeListItem(title: 'Burger', image: 'burger'),
              RecipeListItem(title: 'Pizza', image: 'pizza'),
            ],
          ),
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
