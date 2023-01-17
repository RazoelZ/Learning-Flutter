void main(List<String> args) async {
  var p = Person();

  print('job 1');
  print('job 2');
  p.getDataAsync().then((value) => print('job 3 : ${p.name}'));
  // await p.getDataAsync();
  // print('job 3 : ${p.name}');
  print('job 4');
}

class Person {
  String name = "Default name";

  void getData() {
    name = "Joko";
    print("Get data Done");
  }

  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 3));
    name = "Joko";
    print("Get data Done");
  }
}
