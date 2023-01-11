import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(title: Text("Card")),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              BuildCard(Icons.account_box, "Account box"),
              BuildCard(Icons.adb, "Serangga Android"),
              ElevatedButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  child: Text("Back"))
            ],
          ),
        ),
      ),
    );
  }

  Card BuildCard(IconData iconData, String text) {
    return Card(
      elevation: 5, //Jarak background ke card,
      child: Row(children: <Widget>[
        Container(
            margin: EdgeInsets.all(5),
            child: Icon(
              iconData,
              color: Colors.green,
            )),
        Text(text)
      ]),
    );
  }
}
