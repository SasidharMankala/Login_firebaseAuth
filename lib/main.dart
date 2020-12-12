import 'package:flutter/material.dart';
import 'package:login/Login/createaccount.dart';
import 'package:login/Login/loginscreen.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:login/home.dart';

void main() {
  runApp(MaterialApp( 
    initialRoute: '/',
    routes: {
      '/': (context) => loginscreen(),
      '/home': (context)=>home(),
      '/account':(context)=>makeaccount(),
    }
  ));
}