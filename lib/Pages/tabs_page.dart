import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

import 'categroy_page.dart';
import 'favourites_page.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  int selectedIndex = 0;

  List<Widget> pages = [
    CategoryPage(),
    FavoritesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MealsApp"),
      ),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: selectedIndex,
        backgroundColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black54,
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favourites",
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: pages[selectedIndex],
    );
  }
}
