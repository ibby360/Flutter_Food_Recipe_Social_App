import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';
import '../api/mock_foodrecipe_service.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockFoodRecipeService();
  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: add todayRecipeListView
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        // TODO: add nested list here
        if (snapshot.connectionState == ConnectionState.done) {
          final recipe = snapshot.data?.todayRecipes ?? [];

          return TodayRecipeList(recipes: recipe);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
