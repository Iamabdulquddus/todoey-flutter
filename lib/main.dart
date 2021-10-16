import 'package:flutter/material.dart';
import 'package:todoey/model/tasks_data.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'model/tasks_data.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
