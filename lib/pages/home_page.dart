import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mr. Spangler's Class Manager"),
      ),

      body: const Center(
        child: Text(
          "Welcome to Spangler's Class",
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}