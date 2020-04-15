import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class daytime extends StatefulWidget {
  @override
  _daytimeState createState() => _daytimeState();
}

class _daytimeState extends State<daytime> {
  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2020),
      lastDate: new DateTime(2034),
    );

    if (picked != null && picked != _date) {
      //  print("selected as :${_date .toString()}");
      setState(() {
        _date = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 120, top: 250),
      child: new Column(
        children: <Widget>[
          RaisedButton(
              child: Text("Select Date"),
              onPressed: () {
                _selectDate(context);
                print("Date:${_date.day.toString()} \n"
                    "Month:${_date.month.toString()}");
              }),
          new Text(
            "Date:${_date.day.toString()} \n"
            "Month:${_date.month.toString()}",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                backgroundColor: Colors.white10,
                fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
