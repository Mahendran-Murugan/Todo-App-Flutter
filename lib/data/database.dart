import 'package:hive_flutter/hive_flutter.dart';
import 'package:todoapp/routes/constants.dart';

class TodoDB {
  List toDoList = [];

  final _box = Hive.box(boxName);

  void createInitialData() {
    toDoList = [
      ["Be Focus", false],
      ["Be Consistant", false],
    ];
  }

  void loadData() {
    toDoList = _box.get("TODOLIST");
  }

  void updateDataBase() {
    _box.put("TODOLIST", toDoList);
  }
}
