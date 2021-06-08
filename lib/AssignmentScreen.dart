import 'package:flutter/material.dart';
import 'package:flutter_screen_slider/DrawerHeader.dart';
import 'package:flutter_screen_slider/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AssignmentScreen extends StatelessWidget {
  AssignmentScreen(this.route);
  final String route;
  static const ASSIGNMENT1 = 'assignment1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(route.toUpperCase()),
        backgroundColor: Colors.cyan[700],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            kDrawerHeader,
            ListTile(
              title: Text('Assignment 1'),
              leading: kDrawerHeaderIcon,
              onTap: () {
                Navigator.popAndPushNamed(context, ASSIGNMENT1);
              },
              dense: true,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 300,
              enableInfiniteScroll: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
            items: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.red[900]),
                child: Center(
                  child: Text(
                    'Assignment 1',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.yellow[900]),
                child: Center(
                  child: Text(
                    'Assignment 2',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
