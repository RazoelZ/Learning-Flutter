import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Hero Animation",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Hero(
            tag: 'Profile Picture',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
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
