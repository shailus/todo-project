import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class submit extends StatefulWidget {
  @override
  _submitState createState() => _submitState();
}

class _submitState extends State<submit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      margin: EdgeInsets.only(top: 500, left: 100),
      child: RaisedButton(
          color: Colors.deepPurple,
          child: new Text(
            "Submit",
            style: TextStyle(
              fontFamily: 'Raleway',
              color: Colors.white,
              fontSize: 19.0,
            ),
          ),
          elevation: 10.0,
          onPressed: () {
            sucess(context);
          }),
    );
  }

  void sucess(BuildContext context) {
    var box = AlertDialog(
      title: Text(
        "Task is Added",
        style: TextStyle(color: Colors.purpleAccent),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext) {
          return box;
        });
  }
}
