import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TabBar MyTabBar = TabBar(
    // indicatorColor: Colors.red,
    indicator: BoxDecoration(
        color: Colors.red,
        border: Border(top: BorderSide(color: Colors.purple, width: 5))),
    tabs: <Widget>[
      Tab(
        icon: Icon(Icons.person),
        text: "Person",
      ),
      Tab(
        icon: Icon(Icons.comment),
        text: "Comments",
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Contoh Tab Bar"),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(MyTabBar.preferredSize.height),
                  child: Container(color: Colors.amber, child: MyTabBar)),
            ),
            body: TabBarView(children: <Widget>[
              Center(
                child: QrImage(
                  version: 6,
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  errorCorrectionLevel: QrErrorCorrectLevel.M,
                  padding: EdgeInsets.all(30),
                  size: 300,
                  data:
                      "https://www.sinergianews.com/uploads/large/454a367ec2ea8686fc54800fac20185a.jpg",
                ),
              ),
              Center(
                child: Text("Tab 2"),
              ),
            ]),
          )),
    );
  }
}
