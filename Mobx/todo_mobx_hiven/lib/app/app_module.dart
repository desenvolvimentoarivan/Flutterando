import 'package:todo_mobx_hiven/app/shared/services/local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:todo_mobx_hiven/app/app_controller.dart';
import 'package:todo_mobx_hiven/app/app_widget.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AppController()),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => LocalStorageService()),
      ];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
