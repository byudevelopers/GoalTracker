import "user.dart";

class Goal {
  final String name;
  final String description;
  final DateTime dueDate;
  final bool completionStatus;
  final User user;

  // Constructor
  const Goal({
    required this.name,
    required this.description,
    required this.completionStatus,
    required this.dueDate,
    required this.user
  });

  // Deserialize JSON to Goal object
  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(
      name: json['name'],
      description: json['description'],
      completionStatus: json['completionStatus'],
      dueDate: json['dueDate'],
      user: json['user']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'completionStatus': completionStatus,
      'dueDate': dueDate,
      'user': user
    };
  }
}
