import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_manager_1/main.dart';
import 'package:go_router/go_router.dart';

class NewTaskScreen extends ConsumerWidget {
  NewTaskScreen({super.key});

  final textController = TextEditingController();

  createNewTask(client, value) async {
    await client.from('tasks').insert({'description': value});
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.go('/'),
          icon: Icon(Icons.navigate_before),
        ),
        title: Text('New Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text('Task Name'),
                border: OutlineInputBorder(),
              ),
              controller: textController,
            ),
            ElevatedButton(
              onPressed: () {
                createNewTask(ref.watch(clientProvider), textController.text);
                textController.clear();
                context.go('/');
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
