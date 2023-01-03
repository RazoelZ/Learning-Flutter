import 'package:belajar_flutter12/cardexample.dart';
import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.adb, color: Colors.white),
              title: Text(
                "Appbar",
                style: TextStyle(color: Colors.white),
              ),
              actions: <Widget>[
                IconButton(onPressed: (() {}), icon: Icon(Icons.settings)),
                IconButton(onPressed: (() {}), icon: Icon(Icons.exit_to_app)),
              ],
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff0096ff), Color(0xff6610f2)],
                        begin: FractionalOffset.topLeft,
                        end: FractionalOffset.bottomRight),
                    image: DecorationImage(
                        image: AssetImage("images/pattern.png"),
                        fit: BoxFit.none,
                        repeat: ImageRepeat.repeat,
                        opacity: 0.05)),
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text("Back"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  ElevatedButton(
                    child: Text("Go To Card Exercise"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return CardExample();
                      })));
                    },
                  ),
                ],
              ),
            )));
  }
}
