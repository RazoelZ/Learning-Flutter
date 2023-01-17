void main(List<String> args) {
  var a = ConstClass(number: 5).number!;
  var b = ConstClass(number: 5).number!;

  print(identical(a, b));
}

class RegularClass {
  final int? number;

  RegularClass({this.number});
}

class ConstClass {
  final int? number;

  const ConstClass({this.number});
}
