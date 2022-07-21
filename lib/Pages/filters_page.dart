import 'package:flutter/material.dart';


import '../widgets/main_drawer.dart';

class FiltersPage extends StatefulWidget {
  static var glutenFree = false;
  static var vegetarian = false;
  static var vegan = false;
  static var lactoseFree = false;
  static var useFilters = false;

  static const String routeName = "/filters_page";

  @override
  State<FiltersPage> createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  Widget switchListTilebuilder(String title, String subtitle, bool value,
      onChanged) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text("Filters", style: Theme
            .of(context)
            .textTheme
            .headline1),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white70,
            child: const Text(
              "Adjust your Meal Selection",
              style: TextStyle(fontSize: 30),
            ),
          ),
          switchListTilebuilder(
              "Gluten Free",
              "Meals With no Gluten will be selected",
              FiltersPage.glutenFree, (value) {
            setState(() {
              FiltersPage.glutenFree = value;
            });
          }),
          switchListTilebuilder(
              "Vegetarian",
              "vegetarian meals will be selected",
              FiltersPage.vegetarian, (value) {
            setState(() {
              FiltersPage.vegetarian = value;
            });
          }),
          switchListTilebuilder("Vegan Food only",
              "Vegan Meals will be selected", FiltersPage.vegan, (value) {
                setState(() {
                  FiltersPage.vegan = value;
                });
              }),
          switchListTilebuilder(
              "Lactose Free",
              "Meals With no Lactose will be selected",
              FiltersPage.lactoseFree, (value) {
            setState(() {
              FiltersPage.lactoseFree = value;
            });
          }),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
      Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FloatingActionButton(
              heroTag: null,
              onPressed: () {
                FiltersPage.useFilters = false;
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(

                  duration: Duration(seconds: 2),
                  content: Text("Filters Has Been Discarded"),
                ));
              },
              child: Icon(Icons.clear),
            ),
            FloatingActionButton(
              heroTag: null,
              onPressed: () {
                FiltersPage.useFilters = true;
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  duration: Duration(seconds: 2),
                  content: Text("Filters Has Been Applied"),
                ));
              },
              child: Icon(Icons.save),
            )
          ],
        ),
      ),


    );
  }
}
