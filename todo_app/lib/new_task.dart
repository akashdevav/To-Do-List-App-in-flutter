import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class addTask extends StatefulWidget {
  const addTask({super.key});

  @override
  State<addTask> createState() => _addTaskState();
}

class _addTaskState extends State<addTask> {
  FirebaseFirestore firebase = FirebaseFirestore.instance;
 

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}