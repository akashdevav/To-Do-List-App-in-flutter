import 'package:flutter/material.dart';
import 'package:todo_app/dialog_box.dart';
import 'package:todo_app/new_task.dart';

class TaskDescription extends StatefulWidget {
  const TaskDescription({super.key});

  @override
  State<TaskDescription> createState() {
    return _TaskDescriptionState();
  }
}
  
class _TaskDescriptionState extends State<TaskDescription> {
  //final fireStore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) =>const Card(
          child: ListTile(
            title: Text('Task Name'),
            subtitle: Text('Description'),
            trailing: Icon(Icons.edit)
            )
          ),
        ),
    );
      
  }
}
  
