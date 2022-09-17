import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/pages/location1.dart';

void main() => runApp(MaterialApp(
  routes:{
            '/location1':(context) => Location1(),
      },
    home: Scaffold(
     body: Center(
        child: TutorialHome(),
        ),
      ),
));

enum Menu { location1 , itemtwo , itemthere}

class TutorialHome extends StatefulWidget {
  @override
  State<TutorialHome> createState() => _TutorialHomeState();
}

class _TutorialHomeState extends State<TutorialHome> {
  int  counter = 0;
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Scaffold(
      appBar: AppBar(

        leading: PopupMenuButton<Menu>(
          // Callback that sets the selected popup menu item.
            onSelected: (Menu item) {
              setState(() {
              });
            },itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[

          PopupMenuItem<Menu>(
            value: Menu.location1 ,
              child: Row(
                children: [
                  FlatButton(onPressed: () {
                    Navigator.pushNamed(context, '/location1');},
                      child: Text('location1'))
                ],
              ),
          ),
          PopupMenuItem<Menu>(
            value: Menu.location1 ,
            child: Row(
              children: [
                FlatButton(onPressed: () {
                  Navigator.pushNamed(context, '/location2');},
                    child: Text('location2'))
              ],
            ),
          ),
           ]
            ),

        actions: <Widget> [

          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {},
          ),
        ],
      ),
      // body is the majority of the screen.
      body:  Center(
        child: Text(
            '$counter',
            style: TextStyle(
            fontSize: 25,
            ),
        ),
      ),
      floatingActionButton : FloatingActionButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Icon(Icons.add),

      ),
    );
  }
}