import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:formulario/src/home/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  _textField({String labelText, onChanged, String Function() erroText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: erroText == null ? null : erroText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = HomeController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Observer(
              builder: (_) {
                return _textField(
                  labelText: "name",
                  erroText: controller.validateName,
                  onChanged: controller.cliente.changeName,
                );
              },
            ),
            SizedBox(
              height: 30,
            ),
            Observer(
              builder: (_) {
                return _textField(
                  labelText: "email",
                  erroText: controller.validateEmail,
                  onChanged: controller.cliente.changeEmail,
                );
              },
            ),
            SizedBox(
              height: 30,
            ),
            Observer(
              builder: (_) {
                return RaisedButton(
                  child: Text('Salvar'),
                  onPressed: controller.isValid ? () {} : null,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
