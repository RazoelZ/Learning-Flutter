import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Custom Card Example",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF8C062F),
      ),
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFF35788), Color(0xfff56d5d)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Card(
              elevation: 10,
              child: Stack(
                children: <Widget>[
                  Opacity(
                    opacity: 0.7,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("images/pattern.png"),
                          fit: BoxFit.cover,
                          opacity: 0.1,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4)),
                      image: DecorationImage(
                        image: AssetImage("images/winter.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20,
                        50 + MediaQuery.of(context).size.height * 0.35, 20, 20),
                    child: Center(
                      child: Column(children: <Widget>[
                        Text(
                          "Kim Min-jeong a.k.a. Winter",
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFFF56D5D),
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Posted on ",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Text(
                                "January 2, 2022 ",
                                style: TextStyle(
                                    color: Color(0xFFF56D5D), fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Spacer(flex: 10),
                            Icon(
                              Icons.thumb_up,
                              size: 18,
                              color: Colors.grey,
                            ),
                            Spacer(flex: 1),
                            Text(
                              "99",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Spacer(flex: 5),
                            Icon(
                              Icons.comment,
                              size: 18,
                              color: Colors.grey,
                            ),
                            Spacer(flex: 1),
                            Text(
                              "888",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Spacer(flex: 10)
                          ],
                        )
                      ]),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
