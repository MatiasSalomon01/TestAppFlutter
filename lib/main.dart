import 'package:flutter/material.dart';
import 'package:test_app/screens/counter_screen.dart';
import 'package:test_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

//Widgets - clases
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CounterScreen());
  }
}
