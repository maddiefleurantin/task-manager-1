import 'package:flutter/material.dart';

class TaskModel extends ChangeNotifier{
  TaskModel(this.id, this.description);

  int id;
  String description;

  select(id, description){
    this.id = id;
    this.description = description;
    notifyListeners();
  }
}