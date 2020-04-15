//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main2.dart';
import 'add.dart';
import 'daytime.dart';


void main() {
  runApp(MaterialApp(
    title: 'home',
    home: myapplication(),

  ));
}

class myapplication extends StatefulWidget {
  @override
  _myapplicationState createState() => _myapplicationState();
}

class _myapplicationState extends State<myapplication> {


  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget build(BuildContext context) {
    void setting(BuildContext context) {
      var box = AlertDialog(

        title: Text("Setting", style: TextStyle(),
          textAlign: TextAlign.center,

        ),

      );
      showDialog(context: context,
          builder: (BuildContext) {
            return box;
          }
      );
    }


    return new Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,
                color: Colors.white, size: 30.0),
            onPressed: () {

            },
          ),


          IconButton(
            icon: Icon(Icons.notifications,
              color: Colors.white, size: 30.0,),
            onPressed: () {


            },
          ),

          IconButton(
              icon: Icon(Icons.more_vert,
                color: Colors.white, size: 30.0,),
              //  onPressed: (){m1();},
              onPressed: () {
                setting(context);
              }

          ),


        ],
        backgroundColor: Colors.redAccent,
        title: Text("Next 7 days"),


        leading: IconButton(
          icon: Icon(Icons.dehaze, size: 30.0, color: Colors.white,),

          onPressed: () => _scaffoldKey.currentState.openDrawer(),


        ),


        //   automaticallyImplyLeading: true,


      ),

      drawer: Drawer(

        child: ListView(


          children: <Widget>[
            DrawerHeader(

              child: Center(child: Text('Welcome', style: TextStyle(
                  fontSize: 30,

                  color: Colors.white
              ),),),

              decoration: BoxDecoration(

                color: Colors.deepOrangeAccent,

                borderRadius: new BorderRadius.only(
                  topRight: const Radius.circular(0.0),
                  topLeft: const Radius.circular(190.0),
                  bottomRight: const Radius.circular(190.0),
                  bottomLeft: const Radius.circular(0.0),

                ),

              ),

            ),


            ListTile(
              title: Text('Add Task', style: TextStyle(
                  fontSize: 19,
                  color: Colors.black87

              ),),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                        Scaffold(
                          appBar: AppBar(
                            title: Text("Add Task",
                              style: TextStyle(
                                fontSize: 19,
                              ),),
                          ),
                          body:
                          new Stack(

                            children: <Widget>[
                              details(),
                              submit(),
                              daytime(),


                            ],

                          ),

                          backgroundColor: Colors.deepOrangeAccent,
                          // new Container(),

                        ),

                    )

                );
              },
            ),
            ListTile(
              title: Text('Delete Task', style:
              TextStyle(
                fontSize: 19,
              )),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    Scaffold(
                      appBar: new AppBar(
                        title: new Text('Delete Task', style:
                        TextStyle(
                          fontSize: 19,
                        ),),

                      ),
                      body:

                      ListView(
                        children: <Widget>[
                          new ListTile(
                            title: new Text('Delete Task', style: TextStyle(
                              fontSize: 19,
                            ),),
                            leading: IconButton(
                              icon: Icon(Icons.delete, size: 35,),
                              onPressed: () {

                              },
                            ),
                          ),
                        ],
                      ),
                    )

                ),);
              },
            ),


            ListTile(
              title: Text('Update Task', style: TextStyle(
                fontSize: 19,
              ),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      Scaffold(
                          appBar: AppBar(
                            title: new Text("Update Task"),
                          )
                        // child: new Text('hi '),
                      ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('More...',
                style: TextStyle(
                    fontSize: 19
                ),),
              onTap: () {
                more(context);
              },
            ),


          ],
        ),
      ),

      body: ListView(
        children: <Widget>[
          new ListTile(
            title: new Text("Today "),
            subtitle: new Text("call to Mom"),
            onTap: () {},

          ),
          new ListTile(

            title: new Text("Tomorrow "),
            subtitle: new Text("make notes"),
            onTap: () {},

          ),

          new ListTile(

            title: new Text("Next day "),
            subtitle: new Text("play the game"),
            //contentPadding: EdgeInsets.all(1.0),
            onTap: () {},
          ),


        ],
      ),

    );
  }

  void more(BuildContext context) {
    var box = AlertDialog(
      backgroundColor: Colors.black12,
      title: Text(
        "Work in Progress", style: TextStyle(color: Colors.purpleAccent),
      ),

    );
    showDialog(context: context,
        builder: (BuildContext) {
          return box;
        }
    );
  }


}

