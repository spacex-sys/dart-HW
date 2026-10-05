import 'package:flutter/material.dart';

class TodoProvider extends ChangeNotifier {
  TextEditingController todoCtr = TextEditingController();
  List<String> todoList = [];
  List<bool> todoCheck = [];

  void addTodo() {
      todoList.add(todoCtr.text);
      todoCheck.add(false);
      todoCtr.clear();
      notifyListeners();
    
  }

  void checkTodo(int index) {
    todoCheck[index] = !todoCheck[index];
    notifyListeners();
  }

  void removeTodo(int index) {
    todoList.removeAt(index);
    todoCheck.removeAt(index);
    notifyListeners();
  }
}