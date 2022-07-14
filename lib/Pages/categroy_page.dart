import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';


class CategroyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Category")),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
        ),
        children: [
          ...DUMMY_CATEGORIES
              .map((item) => CategroyItem(item.id, item.title, item.color))
              .toList()
        ],
      ),
    );
  }
}
