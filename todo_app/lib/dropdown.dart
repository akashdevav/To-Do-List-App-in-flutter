import 'package:flutter/material.dart';

class dropDownTask extends StatefulWidget {
  dropDownTask({super.key});
  @override
  _dropDownTaskState createState() => _dropDownTaskState();
}

class _dropDownTaskState extends State<dropDownTask> {
  //                                      List<String> options = ["Work","Collage","School"];
  String _chosenValue = "Work";

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: _chosenValue,
      items: ["Work","Collage","School"].map((e) => DropdownMenuItem(child: Text(e.toString()), value: e.toString(),)).toList(),
      onChanged: (newValue) {
        setState(() {
          _chosenValue = newValue.toString();
        });
      },
    );
  }
}