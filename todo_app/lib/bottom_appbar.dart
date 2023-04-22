import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_app/background.dart';

class homePage extends StatefulWidget {
  homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        flexibleSpace: colorGradient(Color.fromARGB(255, 168, 104, 242),
            Color.fromARGB(255, 50, 5, 101)),
        centerTitle: true,
        title: const Text('To-Do List'),
        actions: [
          IconButton(
              onPressed: null, //ananymous function
              icon: Icon(CupertinoIcons.calendar_circle_fill))
        ],
      ),
      body: colorGradient(
          Color.fromARGB(255, 214, 85, 236), Color.fromARGB(255, 87, 5, 101)),
      
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, //add icon part
      floatingActionButton:
          FloatingActionButton(onPressed: null, child: Icon(Icons.add)),
      bottomNavigationBar: BottomAppBar(
        //bottom appbar part
        //color: Colors.deepPurple,
        shape: CircularNotchedRectangle(),
        notchMargin: 3.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
            height: kBottomNavigationBarHeight,
            child:SingleChildScrollView( child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              currentIndex: _selectedIndex,
              selectedItemColor: Color.fromARGB(255, 127, 2, 165),
              unselectedItemColor: Color.fromARGB(255, 41, 40, 40),
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_list),label: ''),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.tag), label: ''),],
            )) ),
      ),
    );
  }
}
