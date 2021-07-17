import 'package:formulario/src/models/cliente.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  var cliente = Cliente();

  @computed
  bool get isValid {
    return validateEmail() == null && validateName() == null;
  }

  String validateName() {
    if (cliente.name == null || cliente.name.isEmpty) {
      return "Campo Obrigatorio";
    } else if (cliente.name.length < 3) {
      return "Campo Obrigatorio com 3 caracteres";
    }

    return null;
  }

  String validateEmail() {
    if (cliente.email == null || cliente.email.isEmpty) {
      return "Campo Obrigatorio";
    } else if (!cliente.email.contains('@')) {
      return "Campo Obrigatorio com @";
    }

    return null;
  }
}
