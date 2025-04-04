import 'package:flutter/material.dart';

class CreateGoal extends StatefulWidget {
  const CreateGoal({super.key});

  @override
  State<CreateGoal> createState() => _CreateGoalState();
}

class _CreateGoalState extends State<CreateGoal> {
  final _goalNameController = TextEditingController();

  DateTime selectedDate = DateTime.now();

Future<void> _selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: selectedDate,
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
  );
  
  if (picked != null && picked != selectedDate) {
    setState(() {
      selectedDate = picked;
    });
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Goal',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 4,
      ),
      body: Padding(padding: const EdgeInsets.all(24.0),
        child: Column(
            children: [
              TextField(
                controller: _goalNameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder()
                )
              ),
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: const Text('Select Date'),
              )
            ],
        ),
      ),
    );
  }
}