import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/user_model.dart';

class ApiService {
  final String baseUrl = 'https://reqres.in/api/users';

  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['data'];
      return jsonResponse.map((user) => User.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
