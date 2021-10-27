import 'package:flutter/material.dart';

import 'components.dart';
import 'package:food_recipe_app/models/models.dart';

class RecipeGridView extends StatelessWidget {
  final List<SimpleRecipe> recipe;
  const RecipeGridView({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
      ),
      child: GridView.builder(
        itemCount: recipe.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, index) {
          final simpleRecipe = recipe[index];
          return RecipeThumbnail(recipe: simpleRecipe);
        },
      ),
    );
  }
}
