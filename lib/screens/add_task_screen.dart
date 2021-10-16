import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/tasks_data.dart';

class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final newTaskTitle = TextEditingController();
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
          color: Colors.purple.shade50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.purple.shade200,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              controller:newTaskTitle,
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle.text);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(fontSize: 20.0, color: Colors.purple.shade50),
              ),
              style:
                  TextButton.styleFrom(backgroundColor: Colors.purple.shade200),
            )
          ],
        ),
      ),
    );
  }
}
