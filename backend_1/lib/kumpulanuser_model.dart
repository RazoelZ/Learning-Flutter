import 'package:http/http.dart' as http;
import 'dart:convert';

class Usersss //yang perlu aja
{
  String? id;
  String? name;

  //constuctor
  Usersss({this.id, this.name});

  factory Usersss.createUser(Map<String, dynamic> object) {
    return Usersss(
        id: object['id'].toString(),
        name: object['first_name'] + " " + object['last_name']);
  }
  //future itu async karena nanti akan mengembalikan
  static Future<List<Usersss>> getUsersss(String page) async {
    String apiURL = "https://reqres.in/api/users?page=" + page;

    var apiResult = await http.get(Uri.parse(apiURL));
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listUsersss = (jsonObject as Map<String, dynamic>)['data'];

    List<Usersss> usersss = [];
    for (var i = 0; i < listUsersss.length; i++) {
      usersss.add(Usersss.createUser(listUsersss[i]));
    }
    return usersss;
  }
}
