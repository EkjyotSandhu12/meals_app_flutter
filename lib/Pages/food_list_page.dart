import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../models/meals.dart';
import '../widgets/meal_item.dart';


class FoodListPage extends StatefulWidget {
  static const routeName = '/food_list_page';

  @override
  State<FoodListPage> createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {

  late List<Meal> mealsList;
  String? title = "";
  bool loadedInitData = false;

  @override
  void didChangeDependencies() {
      Map<String, String>? argsList =
      ModalRoute.of(context)?.settings.arguments as Map<String, String>;

      title = argsList['title'];
      final id = argsList['id'];

      mealsList = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(id);
      }).toList();

    super.didChangeDependencies();
  }

  void _deleteFood(String catId){
    setState(() {
      mealsList.removeWhere((element) => element.id == catId);
    });
  }


  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(title!)),
      body: ListView.builder(
          itemCount: mealsList.length,
          itemBuilder: (context, index) {
            return MealItem(id: mealsList[index].id, imageUrl: mealsList[index].imageUrl, title: mealsList[index].title,
                complexity: mealsList[index].complexity,affordability: mealsList[index].affordability,
                duration: mealsList[index].duration, deleteFood: _deleteFood);
          }),
    );
  }
}
