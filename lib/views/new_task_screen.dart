import 'package:flutter/material.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text('Task Name'),
                border: OutlineInputBorder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
