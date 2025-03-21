
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList=[];

  final _myBox = Hive.box('mybox');

//ifitsthefirst time running this
  void createInitialData(){
   toDoList = [
    ["welcome to the todo app", false],
    ["Add your own todos now", false],
  ];

  }

  //load data from DB
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList );
  }
}