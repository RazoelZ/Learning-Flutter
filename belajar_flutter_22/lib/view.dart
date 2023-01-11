import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:belajar_flutter_22/detail.dart';
import 'dart:convert';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  Future<List> getData() async {
    final response =
        await http.get(Uri.parse("http://10.0.2.2/coba-flutter/getdata.php"));
    debugPrint(response.body);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View Page")),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? ItemList(list: snapshot.data as List)
                : new Center(
                    child: new CircularProgressIndicator(),
                  );
          }),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({required this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
          child: GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => DetailPage(
                list: list,
                index: index,
              ),
            )),
            child: Card(
              elevation: 10,
              child: ListTile(
                title: Text(list[index]['nama']),
                leading: Icon(Icons.car_crash_rounded),
                subtitle: Text("Plat Nomer : ${list[index]['plat_nomor']}"),
              ),
            ),
          ),
        );
      },
    );
  }
}
