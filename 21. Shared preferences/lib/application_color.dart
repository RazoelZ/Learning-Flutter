import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ApplicationColor with ChangeNotifier {
  bool _islightblue = true; //private

  bool get isLigthblue => _islightblue;

  set isLigthblue(bool value) {
    _islightblue = value;
    notifyListeners(); //memberitahukan widget consumer
  }

  Color get color => (_islightblue) ? Colors.lightBlue : Colors.amber;
}
