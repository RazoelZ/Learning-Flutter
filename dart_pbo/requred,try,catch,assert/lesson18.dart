void main(List<String> args) {
  Person p;

  try {
    p = Person(name: 'null');
  } catch (e) {
    print(e);
  }

  print("hello");
}

class Person {
  String name;
  int age;
  Person({required this.name, this.age = 0}) {
    // ignore: unnecessary_null_comparison
    assert(name != null, "Name is required");
  }
}
