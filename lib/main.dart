import 'package:flutter/material.dart';

import 'Pages/categroy_page.dart';
import 'Pages/food_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext ctx) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.pink,
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
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: "Meals App",
      initialRoute: '/', //default value is '/'
      routes: {
        '/' : (_) => CategroyPage(),
        FoodListPage.routeName : (_) => FoodListPage(),
      },
    );
  }
}

