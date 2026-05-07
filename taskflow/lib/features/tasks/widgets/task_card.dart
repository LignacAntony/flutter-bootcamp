import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskCard extends StatelessWidget {
  final Task task;

  const TaskCard({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.title),
      subtitle: Text('Created at: ${task.createdAt}\nDescription: ${task.description}'),
      leading: Icon(
        task.isCompleted ? Icons.check_circle : Icons.circle_outlined,
        color: task.isCompleted ? Colors.green : Colors.grey,
      ),
    );
  }
}
