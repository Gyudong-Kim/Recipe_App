import 'package:flutter/material.dart';
import 'package:recipe_app/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildRecipeAppBar(),
        body: const Column(
          children: [
            RecipeTitle(),
          ],
        ));
  }
}

AppBar _buildRecipeAppBar() => AppBar();
