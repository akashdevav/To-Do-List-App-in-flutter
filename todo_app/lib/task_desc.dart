import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class taskDescription extends StatefulWidget {
  taskDescription({super.key});

  @override
  State<taskDescription> createState() {
    return _taskDescriptionState();
  }
}
  
class _taskDescriptionState extends State<taskDescription> {
  //final fireStore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(8),
          child: const Text('this works!'),
        ),
        ),
    );
      
  }
}
  
