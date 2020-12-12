import 'package:flutter/material.dart';

class makeaccount extends StatefulWidget {
  @override
  _makeaccountState createState() => _makeaccountState();
}

class _makeaccountState extends State<makeaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create an account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text('Create account'),
      ),
    );
  }
}