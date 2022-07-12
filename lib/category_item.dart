import 'package:flutter/material.dart';

import 'Pages/food_list_page.dart';

class CategroyItem extends StatelessWidget {

  String id;
  String title;
  Color color;

  CategroyItem(this.id, this.title, this.color);

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          FoodListPage.routeName,
          arguments: {'id' : id, 'title' : title}
        );
      },
      splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Text(title, style: Theme.of(context).textTheme.headline1),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.5), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
