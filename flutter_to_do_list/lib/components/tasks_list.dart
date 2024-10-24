import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/components/task_tile.dart';
import 'package:flutter_to_do_list/models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(taskName: 'Buy Bread'),
    Task(taskName: 'Buy Milk'),
    Task(taskName: 'Buy Eggs'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskTitle: tasks[index].taskName, 
        isChecked: tasks[index].isDone,
        checkboxCallback: (checkboxState) {
          setState(() {
            tasks[index].toggleDone();
          });
        }
      );
    }, itemCount: tasks.length);
  }
}