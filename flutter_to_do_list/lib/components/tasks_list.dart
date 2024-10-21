import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/components/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TaskTile()
      ],
    );
  }
}