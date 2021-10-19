import 'package:flutter/material.dart';

import 'theme.dart';
import 'home.dart';

void main() {
  runApp(const FoodRecipe());
}

class FoodRecipe extends StatelessWidget {
  const FoodRecipe({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FoodRecipeTheme.light();
    return MaterialApp(
      theme: theme,
      title: 'FoodRecipe',
      home: const Home(),
    );
  }
}
