import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';

import '../models/meals.dart';
import '../widgets/meal_item.dart';

class FavoritesPage extends StatefulWidget {
  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    List<Meal> mealsList =
        DUMMY_MEALS.where((meal) => meal.isFavourite).toList();
    return mealsList.isEmpty
        ? Center(child: Text("Add Some Favourites!"))
        : ListView.builder(
            itemCount: mealsList.length,
            itemBuilder: (context, index) {
              return MealItem(
                  id: mealsList[index].id,
                  imageUrl: mealsList[index].imageUrl,
                  title: mealsList[index].title,
                  complexity: mealsList[index].complexity,
                  affordability: mealsList[index].affordability,
                  duration: mealsList[index].duration);
            });
  }
}
