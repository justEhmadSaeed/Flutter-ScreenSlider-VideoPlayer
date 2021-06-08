import 'package:flutter/material.dart';
import 'package:flutter_screen_slider/AssignmentScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AssignmentScreen.ASSIGNMENT1,
      routes: {
        AssignmentScreen.ASSIGNMENT1: (_) =>
            AssignmentScreen(AssignmentScreen.ASSIGNMENT1),
      },
    );
  }
}
