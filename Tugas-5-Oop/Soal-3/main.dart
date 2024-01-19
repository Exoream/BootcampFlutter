import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(List<String> args) {
  ArmorTitan armorTitan = ArmorTitan();
  armorTitan.powerPoint = 3;
  int armorTitanPowerPoint = armorTitan.powerPoint < 5 ? 5 : armorTitan.powerPoint;

  AttackTitan attackTitan = AttackTitan();
  attackTitan.powerPoint = 6;
  int attackTitanPowerPoint = attackTitan.powerPoint < 5 ? 5 : attackTitan.powerPoint;

  BeastTitan beastTitan = BeastTitan();
  beastTitan.powerPoint = 2;
  int beastTitanPowerPoint = beastTitan.powerPoint < 5 ? 5 : beastTitan.powerPoint;

  Human human = Human();
  human.powerPoint = 8;
  int humanPowerPoint = human.powerPoint < 5 ? 5 : human.powerPoint;

  // Tampilkan powerPoint
  print('Armor Titan Power Point: $armorTitanPowerPoint');
  print('Attack Titan Power Point: $attackTitanPowerPoint');
  print('Beast Titan Power Point: $beastTitanPowerPoint');
  print('Human Power Point: $humanPowerPoint');

  // Tampilkan hasil dari setiap object
  print('Armor Titan Terjang: ${armorTitan.terjang()}');
  print('Attack Titan Punch: ${attackTitan.punch()}');
  print('Beast Titan Lempar: ${beastTitan.lempar()}');
  print('Human Kill All Titan: ${human.killAllTitan()}');
}