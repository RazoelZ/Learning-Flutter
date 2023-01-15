import 'dart:io';
import 'latian_enkapsulasi.dart';

main(List<String> args) {
  persegi_panjang? kotak1, kotak2;
  double? luas_kotak1;

  kotak1 = new persegi_panjang();
  kotak1.setPanjang(2);
  kotak1.lebar = -3;

  kotak2 = new persegi_panjang();
  kotak2.setPanjang(double.tryParse(stdin.readLineSync()!)!);
  kotak2.lebar = double.tryParse(stdin.readLineSync()!)!;

  luas_kotak1 = kotak1.luas;

  print(luas_kotak1 + kotak2.luas);
  print(kotak1.getPanjang());
}
