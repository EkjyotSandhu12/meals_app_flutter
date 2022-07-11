import 'package:flutter/material.dart';

class CategroyItem extends StatelessWidget{

  String title;
  Color color;

  CategroyItem(this.title, this.color);

  Widget build(BuildContext context){

    return Container(
      padding: EdgeInsets.all(10),
      child: Text(title),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.5),
            color
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15)
      ),
    );
  }
}