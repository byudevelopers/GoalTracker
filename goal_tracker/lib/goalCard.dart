import 'package:flutter/material.dart';

class GoalCard extends StatelessWidget {
  final String title;
  final Widget? child;
  final VoidCallback? onTap;

  const GoalCard({
    Key? key,
    required this.title,
    this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
              ),
              if (child != null) const SizedBox(height: 8),
              if (child != null) child!,
            ],
          ),
        ),
      ),
    );
  }
}