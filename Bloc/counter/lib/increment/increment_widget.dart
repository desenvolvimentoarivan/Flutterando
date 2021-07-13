import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:counter/increment/increment_controller.dart';
import 'package:flutter/material.dart';

class IncrementWidget extends StatefulWidget {
  const IncrementWidget({Key key}) : super(key: key);

  @override
  _IncrementWidgetState createState() => _IncrementWidgetState();
}

class _IncrementWidgetState extends State<IncrementWidget> {
  @override
  Widget build(BuildContext context) {
    final IncrementController bloc =
        BlocProvider.of<IncrementController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc'),
      ),
      body: Center(
        child: StreamBuilder(
            stream: bloc.outCounter,
            builder: (context, snapshot) {
              return Text('${snapshot.data}');
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: bloc.increment,
      ),
    );
  }
}
