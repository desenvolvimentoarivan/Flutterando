import 'package:computed_mobx/src/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = HomeController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Computed'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: controller.mudarNome,
                decoration: InputDecoration(
                  hintText: 'Nome',
                ),
              ),
              TextField(
                onChanged: controller.mudarSobrenome,
                decoration: InputDecoration(
                  hintText: 'Sobrenome',
                ),
              ),
              Observer(builder: (_) {
                return Text(controller.nomeCompleto);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
