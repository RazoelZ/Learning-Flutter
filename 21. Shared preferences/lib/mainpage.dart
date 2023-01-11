import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_curd/application_color.dart';
import 'package:flutter_curd/secondpage.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ApplicationColor>(
      create: (context) => ApplicationColor(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Consumer<ApplicationColor>(
            builder: (context, ApplicationColor, _) => Text(
              "Provider State Management",
              style: TextStyle(color: ApplicationColor.color),
            ),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<ApplicationColor>(
              builder: (context, ApplicationColor, _) => AnimatedContainer(
                margin: EdgeInsets.all(5),
                width: 100,
                height: 100,
                color: ApplicationColor.color,
                duration: Duration(milliseconds: 500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(margin: EdgeInsets.all(5), child: Text("AB")),
                Consumer<ApplicationColor>(
                  builder: (context, ApplicationColor, _) => Switch(
                    value: ApplicationColor.isLigthblue,
                    onChanged: (newValue) {
                      ApplicationColor.isLigthblue = newValue;
                    },
                  ),
                ),
                Container(margin: EdgeInsets.all(5), child: Text("LB")),
              ],
            ),
            Column(
              children: <Widget>[
                ElevatedButton(
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return SecondPage();
                      })));
                    }),
                    child: Text("Lanjut Multi Provider"))
              ],
            )
          ],
        )),
      ),
    );
  }
}
