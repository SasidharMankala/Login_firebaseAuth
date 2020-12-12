import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('welcome'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text('Welcome, User'),
      ),
    );
  }
}