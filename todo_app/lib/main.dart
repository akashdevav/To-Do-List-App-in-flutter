import 'package:flutter/material.dart';
import 'package:todo_app/bottom_appbar.dart';
//Import firebase libraries and plugins
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android,
  );
  runApp(const MyApp());
}


// class DefaultFirebaseOptions {
//   static var currentPlatform;
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
     home: homePage(), 
     );
  }
}


