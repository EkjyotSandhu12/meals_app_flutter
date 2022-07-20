import 'package:flutter/material.dart';

import '../Pages/filters_page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget drawerListTile(
      String text, IconData icon, VoidCallback handlerFunction) {
    return ListTile(
      horizontalTitleGap: 30,
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(text, style: TextStyle(fontSize: 17)),
      onTap: handlerFunction,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
            color: Theme.of(context).colorScheme.primary,
            alignment: Alignment.center,
            child: const Text(
              "Cooking Up",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
          drawerListTile(
            "Foods",
            Icons.restaurant,
            () {
              Navigator.of(context).pushReplacementNamed("/");
            },
          ),
          drawerListTile(
            "Filters",
            Icons.settings,
            () {
              Navigator.of(context).pushReplacementNamed(FiltersPage.routeName);
            },
          )
        ],
      ),
    );
  }
}
