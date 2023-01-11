import 'package:flutter/material.dart';
import 'package:belajar_flutter_22/create.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(0, 129, 201, 1),
                Color.fromRGBO(255, 201, 60, 1)
              ], begin: Alignment.topRight, end: Alignment.bottomLeft),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        "assets/winter.jpeg",
                        width: 250,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        "Silahkan Masuk",
                        style: TextStyle(
                            color: Color.fromRGBO(91, 192, 248, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(91, 192, 248, 1),
                          hintText: "Username",
                          hintStyle:
                              TextStyle(color: Color.fromRGBO(91, 192, 248, 1)),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(91, 192, 248, 1),
                          hintText: "Password",
                          hintStyle:
                              TextStyle(color: Color.fromRGBO(91, 192, 248, 1)),
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CreatePage()));
                            }),
                            child: Text(" Login"))),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
