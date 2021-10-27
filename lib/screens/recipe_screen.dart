import 'package:flutter/material.dart';

import 'package:food_recipe_app/models/models.dart';
import 'package:food_recipe_app/api/mock_foodrecipe_service.dart';
import 'package:food_recipe_app/components/components.dart';

class RecipeScreen extends StatelessWidget {
  final exploreService = MockFoodRecipeService();
  RecipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: exploreService.getRecipes(),
      builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return RecipeGridView(recipe: snapshot.data ?? []);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
