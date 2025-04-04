import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/goal.dart';

class ApiClient {
  final String baseUrl;

  ApiClient({required this.baseUrl});

  Future<List<Goal>> fetchUserGoals(String userId) async {
    final url = Uri.parse('$baseUrl/user/$userId');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      final List<Goal> goalList = jsonResponse.map((goal) => Goal.fromJson(goal)).toList();
      return goalList;
    } else {
      throw Exception('Failed to load goals');
    }
  }

  Future<Goal> createGoal(String userId, Goal goal) async {
    final url = Uri.parse('$baseUrl/user/$userId');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode(goal.toJson()),
    );
    if (response.statusCode == 201) {
      return Goal.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to create goal');
    }
  }
}
