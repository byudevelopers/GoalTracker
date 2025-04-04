import 'package:flutter/material.dart';
import 'package:goal_tracker/goalCard.dart';
import 'package:goal_tracker/viewCard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> items = [
    {'title': 'Card 1', 'content': 'Content for Card 1'},
    {'title': 'Card 2', 'content': 'Content for Card 2'},
    {'title': 'Card 3', 'content': 'Content for Card 3'},
    {'title': 'Card 3', 'content': 'Content for Card 3'},
    {'title': 'Card 3', 'content': 'Content for Card 3'},
    {'title': 'Card 3', 'content': 'Content for Card 3'},
    {'title': 'Card 3', 'content': 'Content for Card 3'},
    {'title': 'Card 3', 'content': 'Content for Card 3'},
    {'title': 'Card 3', 'content': 'Content for Card 3'},
    {'title': 'Card 3', 'content': 'Content for Card 3'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 4,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(Icons.logout_sharp, size: 28),
            onPressed: () {
              // Add logout logic here
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade50, Colors.white],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // User Profile Section
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.blue.shade100,
                        child: Icon(
                          Icons.person,
                          color: Colors.blue,
                          size: 28,
                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        'Welcome, Username!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32),

              // Action Buttons
              _buildActionButton(
                icon: Icons.flag,
                label: 'Create New Goal',
                color: Colors.blue,
                onPressed: () {},
              ),
              SizedBox(height: 20),
              _buildActionButton(
                icon: Icons.history,
                label: 'Past Goals',
                color: Colors.green,
                onPressed: () {},
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return GoalCard(
                      title: items[index]['title'],
                      child: Text(items[index]['content']),
                      onTap: () {
                        // Handle card tap
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ViewCard()),
                        );
                        print('Tapped on ${items[index]['title']}');
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton.icon(
      icon: Icon(icon, size: 28),
      label: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 3,
      ),
    );
  }
}
