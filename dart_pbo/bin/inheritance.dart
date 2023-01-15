import 'gaming/hero.dart';
import 'gaming/monster.dart';
import 'gaming/monster_kecoak.dart';
import 'gaming/monster_ubur.dart';

void main(List<String> args) async {
  Hero h = Hero();
  Monster m = Monster();
  MonsterUbur u = MonsterUbur();

  List<Monster> monsters = [];

  monsters.add(MonsterUbur());
  monsters.add(MonsterKecoak());
  monsters.add(MonsterUbur());

  for (Monster m in monsters) {
    if (m is MonsterUbur) {
      print(m.swim());
    }
  }
  print("\n=========================\n");

  h.healthpoint = 10;
  m.healthpoint = -10;
  u.healthpoint = 10;

  print("hero healthpoint " + h.healthpoint.toString());
  print("monster healthpoint " + m.healthpoint.toString());
  print("monster ubur healthpoint " + u.healthpoint.toString());

  print(h.killMonster());
  print(m.eatHuman());
  print(u.eatHuman());
  print(u.swim());
}
