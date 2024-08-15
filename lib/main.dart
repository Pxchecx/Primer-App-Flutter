import 'package:flutter/material.dart';
import 'dart:math';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Convertimos key a super parameter
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RandomWordScreen(),
    );
  }
}

class RandomWordScreen extends StatefulWidget {
  // Convertimos key a super parameter
  const RandomWordScreen({super.key});

  @override
  RandomWordScreenState createState() => RandomWordScreenState();
}

class RandomWordScreenState extends State<RandomWordScreen> {
  final List<String> words = ["Flutter", "Dart", "App", "Botón", "Pantalla"];
  String randomWord = "Presiona el botón";

  void generateRandomWord() {
    final random = Random();
    setState(() {
      randomWord = words[random.nextInt(words.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generar Palabras Aleatorias'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              randomWord,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: generateRandomWord,
              child: const Text('Generar Palabra'),
            ),
          ],
        ),
      ),
    );
  }
}
