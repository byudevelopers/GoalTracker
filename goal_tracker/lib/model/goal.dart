class User {
  final int userId;
  final String name;
  final String address;

  // Constructor
  const User({
    required this.userId,
    required this.name,
    required this.address,
  });

  // Deserialize JSON to User object
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
      name: json['name'],
      address: json['address'],
    );
  }

  // Serialize User object to JSON
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'name': name,
      'address': address,
    };
  }
}
