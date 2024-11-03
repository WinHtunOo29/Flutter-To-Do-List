import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/models/task_data.dart';
import 'package:flutter_to_do_list/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MaterialApp(
        home: Scaffold(
          body: TasksScreen()
        ),
      ),
    );
  }
}
