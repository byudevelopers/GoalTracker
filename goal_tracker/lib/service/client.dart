import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl;

  ApiClient({required this.baseUrl});

  Future<List<>> fetchUserGoals(String userId) async {
    final url = Uri.parse('$baseUrl/user/$userId');
    final response = await http.get(url);
    return response.fromJSON();
  }
  
  //create goal
}
