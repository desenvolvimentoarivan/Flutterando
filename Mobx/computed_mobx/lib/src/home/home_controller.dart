import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  String nome = '';

  @observable
  String sobreNome = '';

  @action
  mudarNome(String novoNome) {
    nome = novoNome;
  }

  @action
  mudarSobrenome(String novoSobrenome) {
    sobreNome = novoSobrenome;
  }

  @computed
  String get nomeCompleto => '$nome $sobreNome';
}
