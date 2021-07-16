import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_mobx_hiven/app/modules/home/components/item_widget.dart';
import 'package:todo_mobx_hiven/app/modules/home/home_controller.dart';
import 'package:todo_mobx_hiven/app/modules/home/home_module.dart';
import 'package:todo_mobx_hiven/app/shared/models/todo_model.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Todo List"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeModule.to.bloc<HomeController>();

  _showDialog([TodoModel model]) {
    model = model ?? TodoModel();
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Novo'),
            content: TextField(
              maxLines: 5,
              onChanged: (v) {
                model.title = v;
              },
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancelar'),
              ),
              FlatButton(
                onPressed: () {
                  controller.add(model);
                  Navigator.pop(context);
                },
                child: Text('Salvar'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
            itemCount: controller.list.length,
            itemBuilder: (_, index) {
              TodoModel model = controller.list[index];
              return ItemWidget(
                model: model,
              );
            });
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _showDialog();
        },
      ),
    );
  }
}
