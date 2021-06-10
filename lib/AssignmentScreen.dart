import 'package:flutter/material.dart';
import 'package:flutter_screen_slider/CarouselContainer.dart';
import 'package:flutter_screen_slider/DrawerHeader.dart';
import 'package:flutter_screen_slider/VideoScreen.dart';
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
              CarouselContainer(
                color: Colors.red[900],
                child: Center(
                  child: Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              CarouselContainer(
                color: Colors.yellow[900],
                child: Center(
                  child: Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              CarouselContainer(
                color: Colors.blue[900],
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              VideoScreen('assets/flutter-demo.mp4')));
                    },
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.video_collection, color: Colors.white),
                          Text(
                            'Play Video',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
