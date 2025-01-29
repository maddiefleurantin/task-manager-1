import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager_1/main.dart';
import 'package:task_manager_1/providers/task_provider.dart';

class TaskDetailsScreen extends ConsumerWidget {
  const TaskDetailsScreen({super.key});

  deleteTask(client, id) async {
    await client
      .from('tasks')
      .delete()
      .eq('id', id);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => context.go('/'),
            icon: Icon(Icons.navigate_before)),
        title: Text(ref.watch(selectedTask).description),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            FloatingActionButton(
              onPressed: () {
                deleteTask(ref.read(clientProvider), ref.watch(selectedTask).id);
                context.go('/');
              },
              child: Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
