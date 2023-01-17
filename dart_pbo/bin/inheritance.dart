import 'gaming/drink_abilty_mixin.dart';
import 'gaming/flying_monster.dart';
import 'gaming/knight.dart';
import 'gaming/monster.dart';
import 'gaming/monster_kecoak.dart';
import 'gaming/monster_ubur.dart';
import 'gaming/monsterucoa.dart';

void main(List<String> args) async {
  List<Monster> monsters = [];

  // monsters.add(MonsterUbur());
  // monsters.add(MonsterKecoak());
  // monsters.add(MonsterUcoa());

  // print("\n===============  normal monster ===============\n");

  // for (Monster m in monsters) {
  //   if (m is DrinkAbilityMixin) {
  //     print((m as DrinkAbilityMixin).drink());
  //   }
  // }

  Knight k = Knight();
  print(k.drink());
}
