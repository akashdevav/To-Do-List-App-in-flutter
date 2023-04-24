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
    return AlertDialog(
      scrollable: true,
      title: Text(
        'New Task',
        textAlign: TextAlign.center, 
        style: TextStyle(fontSize: 16.0, color: Colors.red),
      ),
    );
  }
}