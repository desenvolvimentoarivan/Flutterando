import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:observable_listt/app/models/item_model.dart';

class Itemwidget extends StatelessWidget {
  final ItemModel item;
  final Function removeClicked;
  const Itemwidget({Key key, this.item, this.removeClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListTile(
          title: Text(item.title),
          leading: Checkbox(
            onChanged: item.setCheck,
            value: item.check,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.remove_circle,
              color: Colors.red,
            ),
            onPressed: removeClicked,
          ),
        );
      },
    );
  }
}
