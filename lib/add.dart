import 'package:flutter/material.dart';
import 'package:todo/main2.dart';

class details extends StatefulWidget {
  @override
  _detailsState createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.0, -.6),

      child: Container(
        //color: Colors.orange,
        width: 250,
        height: 50,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: const Radius.circular(02.0),
            bottomLeft: const Radius.circular(02.0),
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(02.0),

          ),
          color: Colors.white,
        ),


//              alignment: Alignment(0.6,0.7),
        child: Center(child: TextField(
          decoration: InputDecoration(
            hintText: 'Task Name',
            helperText: "eg-call to mom,make notes",
          ),
          onSubmitted: (String taskname1) {
            print(taskname1);
          },

          textAlign: TextAlign.center,

        ),

        ),


      ),


    );
  }
}
