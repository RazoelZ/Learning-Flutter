import 'package:belajar_flutter17/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Hero Animation",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: 100,
        height: 100,
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
          child: Hero(
            tag: 'Profile Picture',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                fit: BoxFit.cover,
                image:
                    NetworkImage("https://wallpapercave.com/wp/wp2859022.jpg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
