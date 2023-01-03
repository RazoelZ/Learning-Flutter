import 'package:flutter/material.dart';

// void main() => runApp(MyApp());
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Flutter buat PKL #1"),
        ),
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                width: 150,
                height: 100,
                child: Text(
                  "saya sedang melatih kemampuan flutter saya",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(color: Colors.deepPurpleAccent, fontSize: 15),
                ))),
      ),
    );
  }
}
