import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/components/task_tile.dart';
import 'package:flutter_to_do_list/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.taskName, 
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              }
            );
          }, 
          itemCount: taskData.taskCount
        );
      },
    );
  }
}