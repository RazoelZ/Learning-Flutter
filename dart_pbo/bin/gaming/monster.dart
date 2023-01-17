import 'karakter.dart';

abstract class Monster extends Karakter {
  String eatHuman() => 'Grr.. Delicious.. Yummy..';

  String move();
}
