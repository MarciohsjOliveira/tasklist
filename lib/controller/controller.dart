import 'package:lista_tarefa_mobx/model/list_store.dart';
import 'package:lista_tarefa_mobx/model/login_validation.dart';
import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  LoginValidation loginValidation = LoginValidation();
  ListStore listStore = ListStore();

  String validateUser() {
    if (loginValidation.user == null || loginValidation.user.isEmpty) {
      return "Required field";
    }
    return null;
  }

  String validatePassword() {
    if (loginValidation.user == null || loginValidation.user.isEmpty) {
      return "Required field";
    }
    return null;
  }
}
