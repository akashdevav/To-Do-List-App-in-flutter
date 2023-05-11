import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app/bottom_appbar.dart';
import 'package:todo_app/new_task.dart';

class addTaskdialog extends StatefulWidget {
  addTaskdialog({super.key});

  @override
  State<addTaskdialog> createState() {
    return _addTaskdialogState();
  }
}

class _addTaskdialogState extends State<addTaskdialog> {
 
  final TextEditingController taskNameController = TextEditingController();
  final TextEditingController taskDescController = TextEditingController();
  final List<String> taskTags = ['work', 'collage', 'school', 'other'];
  late String selectedvalue = '';
  


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var hight = MediaQuery.of(context).size.height;
    return AlertDialog(
      scrollable: true,
      title: Text(
        'New Task',
        textAlign: TextAlign.center, 
        style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 86, 11, 136)),
      ),
      content: SizedBox(
        height: hight * 0.35,
        width: width,
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                //1st input text field (Task name)
                TextFormField(
                  controller: taskNameController,
                 style: TextStyle(fontSize: 14.0),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 20.0
                  ),
                  hintText: 'Task Name',
                  hintStyle: TextStyle(fontSize: 14.0),
                  icon: Icon(CupertinoIcons.square_list, color: Colors.deepPurple,),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))
                ),
                ),
                SizedBox(height: 15.0),

                //2nd input text field (Discreption)
                TextFormField(
                  controller: taskDescController,
                 keyboardType: TextInputType.multiline,
                maxLines: null,
                style: TextStyle(fontSize: 14.0),
                decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0
                ),
                hintText: 'Description',
                hintStyle: TextStyle(fontSize: 14.0),
                icon: Icon(CupertinoIcons.bubble_left_bubble_right, color: Colors.deepPurple,),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))
                ),
                ),
                SizedBox(height: 15.0,),
                Row(
                  children: [
                    Icon(CupertinoIcons.tag, color: Colors.deepPurple),
                    SizedBox(width: 15.0),
                    Expanded(
                      child: DropdownButtonFormField2(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 15.0
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        isExpanded: true,
                        hint: Text(
                          'Add a Tag',
                          style: TextStyle(fontSize: 14.0),
                        ),
                        dropdownStyleData: DropdownStyleData(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)
                          )
                        ),
                        items: taskTags.map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(item, 
                          style: TextStyle(fontSize: 14)),
                        )).toList(),
                         onChanged: (String? value) {
                           setState(() {
                             if(value != null) selectedvalue = value;
                           });
                         },
                        )
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      actions: [
        //cancel
        ElevatedButton(onPressed: () {
          Navigator.pop(context, true);
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple
        ),
         child: Text('Cancel')),

         //save
         ElevatedButton(onPressed: () {
          String taskName = taskNameController.text;
          String taskDesc = taskDescController.text;
          final taskTag = selectedvalue;
          _addtask(taskName: taskName, taskDesc: taskDesc, taskTag: taskTag);
          Navigator.of(context, rootNavigator: true).pop();
         },
         style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple
         ),
          child: Text('Save'))
      ],
    );
  }


Future _addtask({required String taskName, required String taskDesc, required String taskTag}) async {
  DocumentReference docRef = await FirebaseFirestore.instance.collection('tasks').add({
    'taskName' : taskName,
    'taskDesc' : taskDesc,
    'taskTag' : taskTag
  });
  String taskId = docRef.id;
  await FirebaseFirestore.instance.collection('tasks').doc(taskId).update({
    'id' : taskId
  });
  _clearall();
}

void _clearall() {
  taskNameController.text = '';
  taskDescController.text = '';
}
}

