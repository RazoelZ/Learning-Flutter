void main(List<String> args) {
  int a = 10;
  int b = 12;

  String c = "hello ";
  String d = "world";

  Hero x = Hero(10);
  Hero y = Hero(12);

  print((x + y).power);
  print("\n${a == b}");
}

class Hero {
  final int power;

  Hero(this.power);

  Hero operator +(Hero other) {
    return Hero(power + other.power);
  }
}
