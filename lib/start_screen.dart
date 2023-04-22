import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int firstNumber = 0;

  void tapChange() {
    setState(() {
      firstNumber++;
    });
  }

  void restartNumber() {
    setState(() {
      firstNumber = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Tap to change number',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(height: 20),
          Text(
            '$firstNumber',
            style: const TextStyle(fontSize: 50),
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(),
              side: const BorderSide(width: 1.3),
              foregroundColor: Colors.indigo,
              fixedSize: const Size(100, 40),
            ),
            onPressed: tapChange,
            icon: const Icon(
              Icons.arrow_right_alt,
              size: 19,
            ),
            label: const Text(
              'TAP',
              style: TextStyle(fontSize: 16),
            ),
          ),
          TextButton.icon(
            style: TextButton.styleFrom(foregroundColor: Colors.deepOrange),
            onPressed: restartNumber,
            icon: const Icon(Icons.refresh),
            label: const Text(
              'Restart',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
