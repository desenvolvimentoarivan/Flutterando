// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<String> _$nomeCompletoComputed;

  @override
  String get nomeCompleto =>
      (_$nomeCompletoComputed ??= Computed<String>(() => super.nomeCompleto))
          .value;

  final _$nomeAtom = Atom(name: '_HomeControllerBase.nome');

  @override
  String get nome {
    _$nomeAtom.context.enforceReadPolicy(_$nomeAtom);
    _$nomeAtom.reportObserved();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.context.conditionallyRunInAction(() {
      super.nome = value;
      _$nomeAtom.reportChanged();
    }, _$nomeAtom, name: '${_$nomeAtom.name}_set');
  }

  final _$sobreNomeAtom = Atom(name: '_HomeControllerBase.sobreNome');

  @override
  String get sobreNome {
    _$sobreNomeAtom.context.enforceReadPolicy(_$sobreNomeAtom);
    _$sobreNomeAtom.reportObserved();
    return super.sobreNome;
  }

  @override
  set sobreNome(String value) {
    _$sobreNomeAtom.context.conditionallyRunInAction(() {
      super.sobreNome = value;
      _$sobreNomeAtom.reportChanged();
    }, _$sobreNomeAtom, name: '${_$sobreNomeAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic mudarNome(String novoNome) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.mudarNome(novoNome);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarSobrenome(String novoSobrenome) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.mudarSobrenome(novoSobrenome);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
