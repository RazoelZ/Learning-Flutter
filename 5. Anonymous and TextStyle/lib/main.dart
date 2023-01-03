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
  String message = "Ini adalah text";

  // void tombolditekan() {
  //   setState(() {
  //     message = "Tombol sudah ditekan";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Anonymous Method"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    message = "Tombol sudah ditekan";
                  }); //Anonymous method
                },
                child: const Text("Tekan Saya")),
            const Text(
              "Terimakasih banyak",
              style: TextStyle(fontFamily: "crashlandingBB", fontSize: 30),
            ),
            const Text(
              "Sama-sama",
              style: TextStyle(
                  fontFamily: "crashlandingBB",
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  decorationThickness: 3,
                  decorationStyle: TextDecorationStyle.wavy),
            )
          ],
        )),
      ),
    );
  }
}
