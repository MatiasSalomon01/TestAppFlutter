import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize = TextStyle(fontSize: 20);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
        elevation: 5,
        backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Número de Clicks', style: fontSize),
            Text('10', style: fontSize)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 75, 75, 75),
          child: const Icon(Icons.add)),
    );
  }
}
