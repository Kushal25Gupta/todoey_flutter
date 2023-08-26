import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  TasksTile(
      {required this.taskName,
      required this.ischecked,
      required this.checkboxCallBack});
  final bool ischecked;
  final String taskName;
  final Function checkboxCallBack;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
          decoration: ischecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged: (checkboxState) {
          checkboxCallBack(checkboxState);
        },
      ),
    );
  }
}
