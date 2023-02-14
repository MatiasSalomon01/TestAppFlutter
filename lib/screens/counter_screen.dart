import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void descrease() {
    counter--;
    setState(() {});
  }

  void restart() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize = TextStyle(fontSize: 20);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicación de Conteo'),
        elevation: 5,
        backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Número de Clicks', style: fontSize),
            Text('$counter', style: fontSize)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increase: increase,
        decrease: descrease,
        restart: restart,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function restart;

  const CustomFloatingActions({
    super.key,
    required this.increase,
    required this.decrease,
    required this.restart,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
            onPressed: () => decrease(),
            backgroundColor: Color.fromARGB(255, 75, 75, 75),
            child: const Icon(Icons.exposure_minus_1)),
        FloatingActionButton(
            onPressed: () => restart(),
            backgroundColor: Color.fromARGB(255, 75, 75, 75),
            child: const Icon(Icons.restart_alt)),
        FloatingActionButton(
            onPressed: () => increase(),
            backgroundColor: Color.fromARGB(255, 75, 75, 75),
            child: const Icon(Icons.add))
      ],
    );
  }
}
