import 'dart:async';

import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:hive/hive.dart';
import 'package:todo_mobx_hiven/app/shared/models/todo_model.dart';

class LocalStorageService extends Disposable {
  Completer<Box> completer = Completer<Box>();

  LocalStorageService() {
    _initDB();
  }

  _initDB() async {
    final directory = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(directory.path);

    final box = await Hive.openBox("todo");
    if (!completer.isCompleted) completer.complete(box);
  }

  Future<List<TodoModel>> getAll() async {
    final box = await completer.future;
    return box.values.map((item) => TodoModel.fromJson(item)).toList();
  }

  Future<TodoModel> add(TodoModel model) async {
    final box = await completer.future;
    model.id = box.values.length;
    box.put(box.values.length, model.toJson());
    return model;
  }

  remove(int id) async {
    final box = await completer.future;
    await box.delete(id);
  }

  update(TodoModel model) async {
    final box = await completer.future;
    await box.put(model.id, model.toJson());
  }

  @override
  void dispose() async {
    final box = await completer.future;
    box.close();
  }
}
