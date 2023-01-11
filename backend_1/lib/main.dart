import 'package:backend_1/post_result_model.dart';
import 'package:backend_1/user_model.dart';
import 'package:backend_1/kumpulanuser_model.dart';
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
  dynamic postResult = null;
  dynamic user = null;
  String output = "no data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API DEMO"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text((postResult != null)
                      ? postResult.id +
                          " | " +
                          postResult.name +
                          " | " +
                          postResult.job +
                          " | " +
                          postResult.created
                      : "Tidak ada data"),
                  ElevatedButton(
                      onPressed: (() {
                        PostResult.connectToAPI("Badu", "Dokter").then((value) {
                          setState(() {
                            postResult = value;
                          });
                        });
                      }),
                      child: Text("POST"))
                ],
              )),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text((user != null)
                      ? user.id + " | " + user.name + " | "
                      : "Tidak ada data"),
                  ElevatedButton(
                    onPressed: () {
                      User.connectToAPI("3").then((value) {
                        user = value;
                        setState(() {});
                      });
                    },
                    child: Text("GET"),
                  )
                ],
              )),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(output),
                  ElevatedButton(
                    onPressed: (() {
                      Usersss.getUsersss("2").then((usersss) {
                        output = "";
                        for (var i = 0; i < usersss.length; i++) {
                          output = "$output[ ${usersss[i].name}]";
                          setState(() {});
                        }
                      });
                    }),
                    child: Text("GET"),
                  )
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
