import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
//import 'package:todo_app/bottom_appbar.dart';
//import 'package:todo_app/dropdown.dart';

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

  //late DatabaseReference dbRef;  //initialising database

  //creating a instance Database Name
  // @override
  // void initState() {
  //   super.initState();
  //   dbRef = FirebaseDatabase.instance.ref().child('Daily Task');
  // } 

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
                TextFormField(controller: taskDescController,
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
                         onChanged: (value) {
                           
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
          final taskName = taskNameController.text;
          final taskDesc = taskDescController.text;
          //_addTasks(taskName: taskName, taskDesc: taskDesc);
          //The above mapped value can send to the db with unique id
          //dbRef.push().set(task);
         },
         style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple
         ),
          child: Text('Save'))
      ],
    );
  }
}