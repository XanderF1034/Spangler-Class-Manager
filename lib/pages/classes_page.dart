import 'package:flutter/material.dart';

class ClassesPage extends StatelessWidget {
  const ClassesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final classes = [
      "AP Object Oriented Programming",
      "Computer Programming",
      "Web Development",
      "Intro to Computer Science",
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.yellow,
        title: const Text("Classes"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: classes.length,
        itemBuilder: (context, index) {
          return ClassCard(className: classes[index]);
        },
      ),
    );
  }
}

class ClassCard extends StatelessWidget {
  final String className;

  const ClassCard({
    super.key,
    required this.className,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.yellow.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.code,
            color: Colors.yellow,
            size: 34,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              className,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white54,
            size: 18,
          ),
        ],
      ),
    );
  }
}