import 'package:flutter/material.dart';

import '../dummy_data.dart';

class MealDetailPage extends StatefulWidget {
  static const routeName = "/meal_detail_page";

  @override
  State<MealDetailPage> createState() => _MealDetailPageState();
}

class _MealDetailPageState extends State<MealDetailPage> {
  Widget headingText(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }

  Widget designedContainer(BuildContext context, Widget widget) {
    return Container(
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.24,
      width: MediaQuery.of(context).size.width * 0.8,
      child: widget,
    );
  }

  Widget build(BuildContext context) {
    String mealId = ModalRoute.of(context)?.settings.arguments as String;

    final selectedMeal =
        DUMMY_MEALS.firstWhere((element) => element.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 0.6,
            ),
            headingText(context, "Ingredients"),
            designedContainer(
              context,
              ListView.builder(
                itemCount: selectedMeal.ingredients.length,
                itemBuilder: (context, index) => Card(
                  color: Colors.yellow,
                  child: Text(
                    selectedMeal.ingredients[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            headingText(context, "Steps"),
            designedContainer(
              context,
              ListView.builder(
                itemCount: selectedMeal.steps.length,
                itemBuilder: (_, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text((index + 1).toString()),
                      ),
                      title: Text(selectedMeal.steps[index]),
                      trailing: const Text("trailing"),
                      subtitle: const Text("Subtitle"),
                    ),
                    Divider()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            selectedMeal.isFavourite ? selectedMeal.isFavourite = false : selectedMeal.isFavourite = true;
          });
        },
        child: selectedMeal.isFavourite ? Icon(Icons.star) : Icon(Icons.star_border),
      ),
    );
  }
}
