import 'package:cloud_firestore/cloud_firestore.dart';
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
  final fireStore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: StreamBuilder<QuerySnapshot>(
        stream: fireStore.collection('tasks').snapshots(),
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            return Text('No task to display');
          }
          else {
            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
                return Container(
                  child: ListTile(
                    title: Text(data['taskName']),
                    subtitle: Text(data['taskDesc']),
                  ),
                );
              }

              ).toList(),
            );
          }
        }
      ),
    );
      
  }
}
  
