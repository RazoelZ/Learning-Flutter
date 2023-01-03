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
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Input Widget"),
          ),
          body: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextField(
                  // obscureText: true, //buat password
                  // maxLines: 2,
                  decoration: InputDecoration(
                      fillColor: Colors.lightBlue[50],
                      filled: true,
                      icon: const Icon(Icons.adb),
                      prefixIcon: const Icon(Icons.person),
                      prefixText: "Name:",
                      prefixStyle: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                      labelText: "Nama Lengkap",
                      labelStyle: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                      hintText: "Nama lengkap mu",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  controller: controller,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                Text(controller.text)
              ],
            ),
          )),
    );
  }
}
