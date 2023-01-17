void main(List<String> args) {
  List<Person> persons = [
    Person(role: 'admin', age: 30),
    Person(role: 'user', age: 20),
    Person(role: 'user', age: 10),
    Person(role: 'admin', age: 40),
    Person(role: 'user', age: 50),
    Person(role: 'admin', age: 60),
  ];

  persons.sort((p1, p2) {
    if (p1.role.compareTo(p2.role) != 0) {
      return p1.role.compareTo(p2.role);
    } else {
      return p1.age.compareTo(p2.age);
    }
  });
  print("\n===============\n");
  persons.forEach((element) {
    print(element.role + '----' + element.age.toString());
  });
}

class Person {
  final String role;
  final int age;

  Person({required this.role, this.age = 0});

  int get roleWeight {
    switch (role) {
      case 'admin':
        return 1;
      case 'user':
        return 2;
      default:
        return 3;
    }
  }
}
