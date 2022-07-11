import 'package:flutter/material.dart';

import './categroy_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext ctx) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        canvasColor:
      ),
      debugShowCheckedModeBanner: false,
      title: "Meals App",
      home: CategroyPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meals App"),),
      body: Center(child: Text('normal App')),
    );
  }
}
