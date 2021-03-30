import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: Color(0xFF757575),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Add Task',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.lightBlueAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  textCapitalization: TextCapitalization.sentences,
                  onChanged: (newText) {
                    newTaskTitle = newText;
                  },
                ),
                SizedBox(height: 5.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlueAccent,
                  ),
                  child: Text('Add'),
                  onPressed: () {
                    Provider.of<TaskData>(context).addTask(newTaskTitle);
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
