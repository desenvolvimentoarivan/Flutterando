import 'package:flutter/material.dart';
import 'package:observable_listt/app/pages/home/home_page.dart';

class Appwidget extends StatelessWidget {
  const Appwidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
