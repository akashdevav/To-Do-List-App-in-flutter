import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/bottom_appbar.dart';

class addTaskdialog extends StatefulWidget {
  addTaskdialog({super.key});

  @override
  State<addTaskdialog> createState() {
    return _addTaskdialogState();
  }
}

class _addTaskdialogState extends State<addTaskdialog> {

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
                TextFormField(style: TextStyle(fontSize: 14.0),
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
                TextFormField(keyboardType: TextInputType.multiline,
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
                    taskTag()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}