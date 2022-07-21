

enum Affordability {
  Affordable,
  Pricey,
  Luxurious
}

enum Complexity{
  Simple,
  Challenging,
  Hard
}

class Meal{

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
  bool isFavourite;
  final int duration;

   Meal({this.isFavourite = false, required this.id,required this.title,required this.categories,required this.imageUrl, required this.ingredients, required this.isGlutenFree,
required this.isLactoseFree, required this.isVegan, required this.isVegetarian, required this.affordability, required this.steps,required this.complexity, required this.duration});

}



