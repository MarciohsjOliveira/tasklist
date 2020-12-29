import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lista_tarefa_mobx/controller/controller.dart';
import 'package:lista_tarefa_mobx/model/login_validation.dart';
import 'package:lista_tarefa_mobx/model/widget_login_model.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import 'file:///C:/Users/mhsjo/AndroidStudioProjects/lista_tarefa_mobx/lib/screen/listModel.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with WidgetModelLogin {
  final controller = Controller();
  LoginValidation loginValidation;
  ReactionDisposer disposer;
  @override
  void didChangeDependencies() {
    loginValidation = Provider.of<LoginValidation>(context);
    super.didChangeDependencies();
    disposer = autorun((_) {
      if (controller.loginValidation.loggedIn)
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => ListModel()));
    });
  }

  @override
  void dispose() {
    disposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget _widgetLogin() {
      return SingleChildScrollView(
        child: Column(
          children: [
            logo(),
            Observer(builder: (_) {
              return (textTaskFormEmail(
                  enabled: !controller.loginValidation.load,
                  obscureText: false,
                  prefixIcon: Icon(Icons.account_circle),
                  errorText: controller.validateUser,
                  hintText: "Enter user email",
                  labelText: "Email",
                  onChanged: controller.loginValidation.changeUser));
            }),
            Observer(builder: (_) {
              return (textTaskFormPassword(
                  enabled: !controller.loginValidation.load,
                  obscureText: !controller.loginValidation.look,
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                      icon: controller.loginValidation.look
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                      onPressed: controller.loginValidation.changeLook),
                  errorText: controller.validatePassword,
                  hintText: "Enter user password",
                  labelText: "Password",
                  onChanged: controller.loginValidation.changePassword));
            }),
            Observer(builder: (_) {
              return iconButtonLogin(
                child: controller.loginValidation.load
                    ? CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.red),
                      )
                    : Text(
                        'Enter',
                      ),
                onPressed: controller.loginValidation.loginPressed,
              );
            })
          ],
        ),
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: appBarModel(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              _widgetLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
