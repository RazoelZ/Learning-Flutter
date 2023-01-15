void main(List<String> args) {
  List<int> mylist = [];
  List<int> mylist1 = [1, 2, 3];

  int e = mylist1[0];

  for (int bilangan in mylist1) {
    print(bilangan);
  }

  print('\n==================\n');

  mylist1.forEach((element) {
    print(element);
  });

  print('\n==================\n');

  mylist1.add(10);
  mylist1.addAll(mylist);

  mylist1.forEach((element) {
    print(element);
  });
}
