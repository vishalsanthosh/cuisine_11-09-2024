import 'package:cuisine/cuisine1.dart';
import 'package:cuisine/cuisine2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuisine',
      debugShowCheckedModeBanner: false,
      
    home: Cuisine2(),
    );
  }
}
