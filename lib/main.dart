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
      title: 'Flutter Assignments',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AssignmentScreen.route,
      routes: {
        AssignmentScreen.route: (_) => AssignmentScreen(),
      },
    );
  }
}
