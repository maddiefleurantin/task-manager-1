import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager_1/providers/task_provider.dart';

class TaskWidget extends ConsumerWidget {
  const TaskWidget(this.task, {super.key});

  final Map task;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(selectedTask).select(task['id'], task['description']);
        context.go('/taskdetails');
        },
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Text(task['description']),
        ),
      ),
    );
  }
}
