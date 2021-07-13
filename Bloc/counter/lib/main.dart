import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:counter/increment/increment_controller.dart';
import 'package:counter/increment/increment_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        bloc: IncrementController(),
        child: IncrementWidget(),
      ),
    );
  }
}
