import 'datetime_securebox.dart';
import 'int_secure_box.dart';
import 'secure_box.dart';

void main(List<String> args) {
  var box = SecureBox<Person>(Person('Wawan'), '123');

  print(box.getData("123")?.name!);
}

class Person {
  final String? name;

  Person(this.name);
}
