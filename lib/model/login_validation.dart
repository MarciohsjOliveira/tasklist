import 'package:mobx/mobx.dart';

part 'login_validation.g.dart';

class LoginValidation = _LoginValidation with _$LoginValidation;

abstract class _LoginValidation with Store {
  @observable
  String user = '';

  @action
  changeUser(String value) => user = value;

  @observable
  String password = '';

  @action
  changePassword(String value) => password = value;

  @computed
  bool get isUserValid =>
      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\."
              r"[a-zA-Z]+")
          .hasMatch(user);

  @computed
  bool get isPasswordValid => password.length > 6;

  @observable
  bool load = false;

  @action
  Future<void> login() async {
    load = true;
    await Future.delayed(Duration(seconds: 1));
    load = false;
    loggedIn = true;
    user = '';
    password = '';
  }

  @observable
  bool look = false;

  @action
  changeLook() => look = !look;

  @computed
  Function get loginPressed =>
      (isPasswordValid && isUserValid && !load) ? login : null;

  @observable
  bool loggedIn = false;

  @action
  void logout() {
    loggedIn = false;
  }
}
