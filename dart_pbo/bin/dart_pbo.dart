import 'dart:io';

//latihan 1
// void main(List<String> arguments) {
//   String? input = stdin.readLineSync();
//   double? number = double.tryParse(input!);
//   print(number! + 10);
// }

//latihan 2
// void main(List<String> args) {

//   String? input = stdin.readLineSync();
//   int? number = int.tryParse(input!);

//   if (number! > 0) {
//     print("positif");
//   } else if (number < 0) {
//     print("negatif");
//   } else {
//     print("nol");
//   }
// }

// //latihan 3
// void main(List<String> args) {
//   for (var i = 0; i < 5; i++) {
//     print("Hello World");
//   }
// }

//latihan 4

// double luas_segiempat(double panjang, double lebar) => panjang * lebar;

// void sapa_penonton() {
//   print("Halo penonton");
// }

// String say(String from, String message, {String? to, String? appName}) {
//   return from +
//       " say " +
//       message +
//       ((to != null) ? " to " + to : "") +
//       ((appName != null) ? " via " + appName : "");
// }

// int mathoperator(int a, int b, Function operator) {
//   return operator(a, b);
// }

// void main(List<String> args) {
//   double? p, l;

//   // p = double.tryParse(stdin.readLineSync()!);
//   // l = double.tryParse(stdin.readLineSync()!);

//   print(luas_segiempat(5.0, 2.0));

//   sapa_penonton();

//   print(say("John", "Hello", to: "Doe", appName: "Whatsapp"));

//   print(mathoperator(2, 3, (a, b) => a * b));
// }
