// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_validation.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginValidation on _LoginValidation, Store {
  Computed<bool> _$isUserValidComputed;

  @override
  bool get isUserValid =>
      (_$isUserValidComputed ??= Computed<bool>(() => super.isUserValid,
              name: '_LoginValidation.isUserValid'))
          .value;
  Computed<bool> _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: '_LoginValidation.isPasswordValid'))
          .value;
  Computed<Function> _$loginPressedComputed;

  @override
  Function get loginPressed =>
      (_$loginPressedComputed ??= Computed<Function>(() => super.loginPressed,
              name: '_LoginValidation.loginPressed'))
          .value;

  final _$userAtom = Atom(name: '_LoginValidation.user');

  @override
  String get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(String value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$passwordAtom = Atom(name: '_LoginValidation.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$loadAtom = Atom(name: '_LoginValidation.load');

  @override
  bool get load {
    _$loadAtom.reportRead();
    return super.load;
  }

  @override
  set load(bool value) {
    _$loadAtom.reportWrite(value, super.load, () {
      super.load = value;
    });
  }

  final _$lookAtom = Atom(name: '_LoginValidation.look');

  @override
  bool get look {
    _$lookAtom.reportRead();
    return super.look;
  }

  @override
  set look(bool value) {
    _$lookAtom.reportWrite(value, super.look, () {
      super.look = value;
    });
  }

  final _$loggedInAtom = Atom(name: '_LoginValidation.loggedIn');

  @override
  bool get loggedIn {
    _$loggedInAtom.reportRead();
    return super.loggedIn;
  }

  @override
  set loggedIn(bool value) {
    _$loggedInAtom.reportWrite(value, super.loggedIn, () {
      super.loggedIn = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_LoginValidation.login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$_LoginValidationActionController =
      ActionController(name: '_LoginValidation');

  @override
  dynamic changeUser(String value) {
    final _$actionInfo = _$_LoginValidationActionController.startAction(
        name: '_LoginValidation.changeUser');
    try {
      return super.changeUser(value);
    } finally {
      _$_LoginValidationActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePassword(String value) {
    final _$actionInfo = _$_LoginValidationActionController.startAction(
        name: '_LoginValidation.changePassword');
    try {
      return super.changePassword(value);
    } finally {
      _$_LoginValidationActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeLook() {
    final _$actionInfo = _$_LoginValidationActionController.startAction(
        name: '_LoginValidation.changeLook');
    try {
      return super.changeLook();
    } finally {
      _$_LoginValidationActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
password: ${password},
load: ${load},
look: ${look},
loggedIn: ${loggedIn},
isUserValid: ${isUserValid},
isPasswordValid: ${isPasswordValid},
loginPressed: ${loginPressed}
    ''';
  }
}
