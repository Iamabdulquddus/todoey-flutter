import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  late final String taskTitle;
  late final Function(bool?) checkBoxCallBack;
  final Function() longPressCallBack;
  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkBoxCallBack,
    required this.longPressCallBack
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
       taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.purple.shade200,
        onChanged: checkBoxCallBack,
      ),
      onLongPress: longPressCallBack,
    );
  }
}


