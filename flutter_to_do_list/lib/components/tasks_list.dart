import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/components/task_tile.dart';
import 'package:flutter_to_do_list/models/task.dart';

class TasksList extends StatefulWidget {

  final List<Task> tasks;

  const TasksList({
    super.key, required this.tasks,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskTitle: widget.tasks[index].taskName, 
        isChecked: widget.tasks[index].isDone,
        checkboxCallback: (checkboxState) {
          setState(() {
            widget.tasks[index].toggleDone();
          });
        }
      );
    }, itemCount: widget.tasks.length);
  }
}