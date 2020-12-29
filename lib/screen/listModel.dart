import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lista_tarefa_mobx/controller/controller.dart';
import 'package:lista_tarefa_mobx/model/login_validation.dart';
import 'package:lista_tarefa_mobx/model/widget_list_model.dart';
import 'package:lista_tarefa_mobx/screen/loginScreen.dart';
import 'package:provider/provider.dart';

class ListModel extends StatelessWidget with WidgetListModel {
  @override
  Widget build(BuildContext context) {
    final controller = Controller();
    final TextEditingController c = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: appBarModel(actions: [
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Provider.of<LoginValidation>(context, listen: false).logout();
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              })
        ]),
      ),
      body: Column(
        children: [
          Observer(builder: (_) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: c,
                onChanged: controller.listStore.setNewTodoTitle,
                decoration: InputDecoration(
                    suffixIcon: controller.listStore.isFormValid
                        ? IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              controller.listStore.addTodo();
                              c.clear();
                            })
                        : null,
                    border: OutlineInputBorder(),
                    hintText: "Task"),
              ),
            );
          }),
          Expanded(child: Observer(builder: (_) {
            return ListView.builder(
                itemCount: controller.listStore.todoList.length,
                itemBuilder: (_, index) {
                  final todo = controller.listStore.todoList[index];
                  return InkWell(
                    onTap: todo.toggleDone,
                    child: Observer(builder: (_) {
                      return Dismissible(
                        key: ValueKey(todo.title),
                        direction: DismissDirection.startToEnd,
                        onDismissed: (position) {
                          controller.listStore.removeTodo();
                        },
                        child: ListTile(
                          title: Text(
                            todo.title,
                            style: TextStyle(
                                color: todo.done ? Colors.grey : Colors.black,
                                decoration: todo.done
                                    ? TextDecoration.lineThrough
                                    : null),
                          ),
                        ),
                      );
                    }),
                  );
                });
          })),
        ],
      ),
    );
  }
}
