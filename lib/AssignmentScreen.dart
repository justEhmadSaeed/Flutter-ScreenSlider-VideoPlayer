import 'package:flutter/material.dart';
import 'package:flutter_screen_slider/CarouselContainer.dart';
import 'package:flutter_screen_slider/DrawerHeader.dart';
import 'package:flutter_screen_slider/VideoScreen.dart';
import 'package:flutter_screen_slider/ASSIGNMENT_DATA.dart';
import 'package:flutter_screen_slider/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AssignmentScreen extends StatefulWidget {
  static const route = '/';

  @override
  _AssignmentScreenState createState() => _AssignmentScreenState();
}

class _AssignmentScreenState extends State<AssignmentScreen> {
  // Defines the assignment object to be displayed
  int assignmentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ASSIGNMENT_DATA[assignmentIndex]['title'].toString()),
        backgroundColor: Colors.cyan[700],
      ),
      drawer: Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: new List.from([kDrawerHeader])
              ..addAll(ASSIGNMENT_DATA
                  .map((e) => ListTile(
                        title: Text(e['title'].toString()),
                        leading: kDrawerHeaderIcon,
                        onTap: () {
                          setState(() {
                            assignmentIndex = ASSIGNMENT_DATA.indexOf(e);
                            Navigator.pop(context);
                          });
                        },
                        dense: true,
                      ))
                  .toList())),
      ),
      body: Container(
        child: CarouselSlider(
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
                  ASSIGNMENT_DATA[assignmentIndex]['title'].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
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
                  ASSIGNMENT_DATA[assignmentIndex]['description'].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            CarouselContainer(
              color: Colors.purple,
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                        ASSIGNMENT_DATA[assignmentIndex]['widgets'] != null
                            ? (ASSIGNMENT_DATA[assignmentIndex]['widgets']
                                    as List<String>)
                                .map((e) => Text(
                                      '- $e',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ))
                                .toList()
                            : [Container()]),
              ),
            ),
            CarouselContainer(
              color: Colors.blue[900],
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VideoScreen(
                            ASSIGNMENT_DATA[assignmentIndex]['video_url']
                                .toString()),
                      ),
                    );
                  },
                  child: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.video_collection, color: Colors.white),
                        Text(
                          'Play Video',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
