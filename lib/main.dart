import 'package:flutter/material.dart';
import 'package:lab5_task1/widgets/animated_container.dart';
import 'package:lab5_task1/widgets/animated_text.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Lab 4 Task 1',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyAnimatedContainer(),
              SizedBox(
                height: 50,
              ),
              MyAnimatedText(
                text: 'This is the text to toggle',
              )
            ],
          ),
        ),
      ),
    );
  }
}
