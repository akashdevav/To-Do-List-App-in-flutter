import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_app/background.dart';
import 'package:todo_app/dialog_box.dart';

class homePage extends StatefulWidget {
  homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final PageController pageController = PageController(initialPage: 0);
  int _selectedIndex = 0;

  // void addDialog(){
  //   setState(() {
  //     addTaskdialog();
  //   });
  // }

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
      extendBody: true,
      body: PageView(
        controller: pageController,
        children: [
          Center(
            child: Discreption(),
          ),
          Center(
            child: taskTag(),
          )
        ],
      ),  
      // body: colorGradient(Color.fromARGB(255, 214, 85, 236), Color.fromARGB(255, 87, 5, 101)),
      
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, //add icon part
      floatingActionButton:
          FloatingActionButton(onPressed: () {
           showDialog(context: context, builder: ((context) => addTaskdialog()));
          },
          tooltip: 'Add task',
           child: Icon(Icons.add)),
      bottomNavigationBar: BottomAppBar(
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
                  pageController.jumpToPage(index);
                });
              },
              items: [
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_list),label: ''),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.tag), label: ''),],
            ),
            ),
             ),
      ),
    );
  }
}


class Discreption extends StatelessWidget {
  Discreption({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('content of your description');
  }
}

class taskTag extends StatelessWidget {
  taskTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('your task');
  }
}