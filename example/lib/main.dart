import 'package:flutter/material.dart';
import 'package:text_gradiate/text_gradiate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('GradientText Example'),
          ),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextGradiate(
                  text: Text(
                    'Hello, Gradient!',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  colors: [Colors.blue, Colors.green],
                ),
                SizedBox(height: 20),
                TextGradiate(
                  text: Text(
                    'Flutter is awesome!',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  colors: [Colors.red, Colors.orange],
                ),
              ],
            ),
          ),
        ),
      );
}
