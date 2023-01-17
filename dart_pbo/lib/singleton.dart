void main(List<String> args) async {
  ServicesSingleton services1 = ServicesSingleton();
  ServicesSingleton services2 = ServicesSingleton();

  if (services1 == services2) {
    print('Both are same');
  } else {
    print('Both are different');
  }
  // User user = await services.getUserData();
}

class User {}

class Services {
  Future<User> getUserData() async {
    return User();
  }
}

class ServicesSingleton {
  static ServicesSingleton _instance = ServicesSingleton._internal();

  ServicesSingleton._internal();

  factory ServicesSingleton() {
    return _instance;
  }

  Future<User> getUserData() async {
    return User();
  }
}
