import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_manager_1/models/task_model.dart';

//part 'task_provider.g.dart';

final selectedTask = ChangeNotifierProvider<TaskModel> ((ref) {
  return TaskModel(0, '');
});