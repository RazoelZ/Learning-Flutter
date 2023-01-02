import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  // _MyAppState() {
  //   for (int i = 0; i < 15; i++) {
  //     widgets.add(Text(
  //       "Data ke-" + (i + 1).toString(),
  //       style: TextStyle(fontSize: 30),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Belajar List dan ListView")),
        body: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        "Data ke-" + counter.toString(),
                        style: TextStyle(fontSize: 35),
                      ));
                      counter++;
                    });
                  },
                  child: Text("Tambah Me!")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                    });
                  },
                  child: Text("Hapus Me!")),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ]),
      ),
    );
  }
}
