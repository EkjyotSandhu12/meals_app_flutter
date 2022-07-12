import 'package:flutter/material.dart';

class FoodListPage extends StatelessWidget{



  Widget build(BuildContext context){

    final argsList = ModalRoute.of(context)!.settings.arguments as Map<String,String>;

    String? title = argsList['title'];
    String? id = argsList['id'];

    return Scaffold(

      appBar: AppBar(title: Text(title!)),
      body: Center(child: Text("items list......")),
    );
  }
}