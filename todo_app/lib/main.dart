import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
        centerTitle: true,
        title: const Text('To-Do List'),
        actions: [
          IconButton(
              onPressed: null,
               icon: Icon(CupertinoIcons.calendar_circle_fill))
        ],
      ),
      body: Column(mainAxisSize: MainAxisSize.min,),
      ),
    );
  }
}
