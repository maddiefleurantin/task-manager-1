import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager_1/providers/task_list.dart';
import 'package:task_manager_1/widgets/task_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskStream = ref.watch(taskListProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: StreamBuilder(
          stream: taskStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final tasks = snapshot.data!;
            return GridView.builder(
              itemCount: tasks.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                final task = tasks[index];
                return TaskWidget(task);
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/newtask');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
