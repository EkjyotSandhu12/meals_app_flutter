import 'package:meals_app/Pages/meal_details_page.dart';
import 'package:meals_app/models/meals.dart';

import 'Package:flutter/material.dart';

class MealItem extends StatelessWidget {
  String id;
  String imageUrl;
  String title;
  Complexity complexity;
  Affordability affordability;
  int duration;
  Function deleteFood;

  MealItem({required this.id,
    required this.imageUrl,
    required this.title,
    required this.complexity,
    required this.affordability,
    required this.duration,
    required this.deleteFood});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10,
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed(
            MealDetailPage.routeName,
            arguments: id,
          ).then((value) {
            if(value != null) deleteFood(value);
          }
          );
        },
        child: Column(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.network(
                        width: double.infinity,
                        height: constraints.maxWidth / 1.5,
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        color: Colors.black54,
                        width: constraints.maxWidth * 0.6,
                        child: Text(
                          title,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.timer),
                      Text("$duration Minutes"),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.attach_money),
                      Text(affordability.name),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work),
                      Text(complexity.name),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
