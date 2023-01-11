import 'package:belajar_flutter20/secondpage.dart';
import 'package:flutter/material.dart';
import 'colorfulnutton.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button custome")),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3.35,
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ColorfulButton(Colors.pink, Colors.blue, Icons.adb),
                ColorfulButton(Colors.amber, Colors.red, Icons.comment),
                ColorfulButton(
                    Colors.green, Colors.blue, Icons.account_tree_outlined),
                ColorfulButton(Colors.grey, Colors.lime,
                    Icons.airplanemode_active_outlined),
              ],
            )),
          ),
          Container(
              margin: EdgeInsets.all(30),
              child: Center(
                child: ShaderMask(
                  shaderCallback: (rectangle) {
                    return LinearGradient(
                            colors: [Colors.black, Colors.transparent],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)
                        .createShader(Rect.fromLTRB(
                            0, 0, rectangle.width, rectangle.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image(
                    width: 300,
                    image: NetworkImage(
                        'https://berempat.com/wp-content/uploads/2022/05/Erick-Thohir.jpg'),
                  ),
                ),
              )),
          Expanded(
            child: Container(
              child: Center(
                child: ElevatedButton(
                  child: Text("Dengerin audio"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return SecondPage();
                    })));
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
