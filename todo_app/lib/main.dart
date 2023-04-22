import 'package:flutter/material.dart';
import 'package:todo_app/bottom_appbar.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
     home: homePage(), 
     );
  }
}


