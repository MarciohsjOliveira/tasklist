import 'package:flutter/material.dart';
import 'package:lista_tarefa_mobx/model/login_validation.dart';
import 'package:lista_tarefa_mobx/screen/myHomePage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => Provider<LoginValidation>(
      create: (_) => LoginValidation(),
      child:
          MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage()));
}
