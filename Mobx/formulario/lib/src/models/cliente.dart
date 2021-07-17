import 'package:mobx/mobx.dart';
part 'cliente.g.dart';

class Cliente = _ClienteBase with _$Cliente;

abstract class _ClienteBase with Store {
  @observable
  String name;

  @action
  changeName(String value) => name = value;

  @observable
  String email;

  @action
  changeEmail(String value) => email = value;

  @observable
  String cpf;

  @action
  changeCpf(String value) => cpf = value;
}
