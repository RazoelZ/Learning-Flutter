import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Container"),
        ),
        body: Container(
          color: Colors.red,
          margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
          padding: EdgeInsets.only(bottom: 20, top: 20),
          child: Container(
            // color: Colors.blue,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.amber,
                      Colors.blue,
                    ])),
          ),
        ),
      ),
    );
  }
}
