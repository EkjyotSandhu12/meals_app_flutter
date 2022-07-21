import 'package:flutter/material.dart';
import 'package:meals_app/Pages/filters_page.dart';
import 'package:meals_app/Pages/meal_details_page.dart';

import 'Pages/categroy_page.dart';
import 'Pages/food_list_page.dart';
import 'Pages/tabs_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext ctx) {
    return MaterialApp(
      theme: ThemeData(
        indicatorColor: Colors.pinkAccent,
        colorScheme: const ColorScheme.light(
          primary: Colors.pinkAccent,
        ),
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                fontSize: 23) //Fontweightis700 for bold
            ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 17,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            fontSize: 12,
            fontFamily: 'RobotoCondensed',
          )
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: "Meals App",
      initialRoute: '/', //default value is '/'
      routes: {
        '/' : (_) => TabsPage(),
        FoodListPage.routeName : (_) => FoodListPage(),
        MealDetailPage.routeName : (_) => MealDetailPage(),
        FiltersPage.routeName : (_) => FiltersPage(),
      },
      onGenerateRoute: (settings){
        print(settings.name);
        return MaterialPageRoute(builder: (_) => CategroyPage());
      },
      onUnknownRoute: (setting){
        return MaterialPageRoute(builder: (_) => CategroyPage());
      },
    );
  }
}

