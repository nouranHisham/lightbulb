// ignore_for_file: empty_statements

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var isOn = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isOn
                  ? Image.asset("images/bulb_on.jpg")
                  : Image.asset("images/bulb_off.jpg"),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isOn = !isOn;
                    });
                  },
                  child: Text("Switch on/off"))
            ],
          ),
        ),
      ),
    );
  }
}
