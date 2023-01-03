import 'package:flutter/material.dart';

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
          title: Text("Belajar stack dan align"),
        ),
        body: Stack(children: <Widget>[
          //bg
          Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black12,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black12,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(fontSize: 30)),
                  ),
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              child: Text("Click Me!"),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.amber),
            ),
          ) //button
        ]),
      ),
    );
  }
}
