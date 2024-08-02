import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Featured',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24, // Increased font size
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search,
                color: Colors.white, size: 28), // Increased icon size
            onPressed: () {
              // Add search functionality here
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
      ),
    );
  }
}
