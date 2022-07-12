import 'package:flutter/material.dart';

import 'package:meals_app/dummy_data.dart';

class FoodListPage extends StatelessWidget {

  static const routeName = '/food_list_page';

  Widget build(BuildContext context) {
    Map<String, String>? argsList = ModalRoute
        .of(context)
        ?.settings
        .arguments as Map<String, String>;

    String? title = argsList['title'];
    String? id = argsList['id'];

    final mealsList = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();

    return Scaffold(

      appBar: AppBar(title: Text(title!)),
      body: ListView.builder(itemCount: mealsList.length, itemBuilder: (context, index){
        return Text(mealsList[index].title);
      } ),
    );
  }
}