import 'package:flutter/material.dart';
import 'package:food_recipe_app/components/components.dart';
import 'package:food_recipe_app/models/explore_recipe.dart';
import 'package:food_recipe_app/models/models.dart';

class TodayRecipeList extends StatelessWidget {
  final List<ExploreRecipe> recipes;
  const TodayRecipeList({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recipe of the day 🍳',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 400,
            // TODO: add listview here
            color: Colors.transparent,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  final recipe = recipes[index];
                  return buildCard(recipe);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 16,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: recipes.length),
          ),
        ],
      ),
    );
  }

  // TODO: add buildCard widget
  Widget buildCard(ExploreRecipe recipe) {
    if (recipe.cardType == RecipeCardType.card1) {
      return Card1(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card2) {
      return Card2(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card3) {
      return Card3(recipe: recipe);
    } else {
      throw Exception('This card doesn\'t exist yet');
    }
  }
}
