import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return  AlertDialog(
      scrollable: true,
      title: Text(
        'New Task',
        textAlign: TextAlign.center, 
        style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 86, 11, 136)),
      ),
      content: SizedBox(
        height: hight * 0.35,
        width: width,
        child: Form(
          child: Column(
            children: [
              TextFormField(style: TextStyle(fontSize: 14.0),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0
                ),
                hintText: 'Task',
                hintStyle: TextStyle(fontSize: 14.0),
                icon: Icon(CupertinoIcons.square_list, color: Colors.deepPurple,)
              ),)
            ],
          ),
        ),
      ),
    );
  }
}