import 'package:flutter/material.dart';
import 'package:herois_favoritos/controller/hero_controller.dart';
import 'package:herois_favoritos/model/hero_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _buildList() {
    HerosController herosController = Provider.of<HerosController>(context);

    return ListView.builder(
      itemCount: herosController.heros.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildItem(herosController.heros[index]);
      },
    );
  }

  _buildItem(HeroModel heroModel) {
    HerosController herosController = Provider.of<HerosController>(context);

    return ListTile(
      onTap: () => herosController.chechFavorite(heroModel),
      title: Text(heroModel.name),
      trailing: Icon(
        Icons.star,
        color: heroModel.isFavorit ? Colors.yellow : Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
        centerTitle: true,
      ),
      body: Consumer<HerosController>(
        builder: (context, heroController, child) {
          return _buildList();
        },
      ),
    );
  }
}
