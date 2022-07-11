import 'package:flutter/material.dart';

import './category_item.dart';
import './dummy_data.dart';

class CategroyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Category")),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
        ),
        children: [
          ...DUMMY_CATEGORIES
              .map((item) => CategroyItem(item.title, item.color))
              .toList()
        ],
      ),
    );
  }
}
