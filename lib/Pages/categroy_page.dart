import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';


class CategoryPage extends StatelessWidget {

  static const routeName = "/categroy_page";

  @override
  Widget build(BuildContext context) {
    return GridView(
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
      );
  }
}
