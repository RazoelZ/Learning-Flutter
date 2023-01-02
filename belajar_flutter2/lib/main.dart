import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Column dan Row"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('text 1'),
            Text('text 2'),
            Text('text 3'),
            Row(children: <Widget>[
              Text('text 4'),
              Text('text 5'),
              Text('text 6'),
            ])
          ],
        ),
      ),
    );
  }
}
