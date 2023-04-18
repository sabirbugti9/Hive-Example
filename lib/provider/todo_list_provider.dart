import 'package:flutter/material.dart';
import 'package:todo_app/constansts/constants.dart';
import 'package:todo_app/model/todo.dart';

class TodoListProvider extends ChangeNotifier {
  void add(Todo todo) async {
    todoBox.add(todo);
    notifyListeners();
  }

  void remove(int index) async {
    todoBox.deleteAt(index);
    notifyListeners();
  }

  void toggleCompleted(Todo todo, index) async {
    todo.completed = !todo.completed;
    todoBox.putAt(index, todo);

    notifyListeners();
  }

  void edit(int index, Todo todo) async {
    todoBox.putAt(index, todo);
    notifyListeners();
  }
}
