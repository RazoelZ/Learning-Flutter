import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  List? list;
  int index;
  DetailPage({this.list, required this.index});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("${widget.list![widget.index]['nama']}")),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Card(
            margin: EdgeInsets.all(10),
            elevation: 10,
            child: Center(
                child: Container(
              padding: EdgeInsets.all(100),
              child: Column(
                children: <Widget>[
                  Text("${widget.list![widget.index]['plat_nomor']}"),
                  Text("${widget.list![widget.index]['jenis_kendaran']}"),
                  Text("${widget.list![widget.index]['layanan']}"),
                  Text("${widget.list![widget.index]['tanggal_pesan']}"),
                ],
              ),
            )),
          ),
        ));
  }
}
