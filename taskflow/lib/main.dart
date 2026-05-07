import 'package:flutter/material.dart';

import 'features/tasks/models/task.dart';
import 'features/tasks/widgets/task_card.dart';

void main() {
  runApp(const TaskFlowApp());
}

class TaskFlowApp extends StatelessWidget {
  const TaskFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaskFlow',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
        fontFamily: 'Times New Roman',
      ),
      home: Scaffold(
        body: Center(
          child: TaskCard(
            task: Task(
              id: '1',
              title: 'Apprendre Flutter',
              description: 'Apprendre les bases de Flutter',
              isCompleted: false,
              createdAt: DateTime.now(),
            ),
          ),
        ),
      ),
    );
  }
}
