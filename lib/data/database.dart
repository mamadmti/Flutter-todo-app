import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  final _myBox = Hive.box('myBox');

  void createInitialData() {
    toDoList = [
      ["Task 1", false],
      ["Task 2", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("ToDoList");
  }

  void UpdateDatabase() {
    _myBox.put("ToDoList", toDoList);
  }
}
