import 'package:ex/home.dart';
import 'package:ex/login.dart';
import 'package:flutter/material.dart';
/*import 'package:space/final.dart';
import 'package:space/home.dart';
import 'package:space/login.dart';*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginscreen(),
    );
  }
}
