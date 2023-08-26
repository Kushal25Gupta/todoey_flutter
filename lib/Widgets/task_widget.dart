import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_provider.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task_list.dart';

class TasksWidget extends StatefulWidget {
  TasksWidget({super.key});
  @override
  State<TasksWidget> createState() => _TasksWidgetState();
}

class _TasksWidgetState extends State<TasksWidget> {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = Provider.of<TaskProvider>(context).Tasks;
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          taskName: tasks[index].taskname,
          ischecked: tasks[index].isDone,
          checkboxCallBack: (bool checkedboxState) {
            setState(() {
              tasks[index].toggledone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
