import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  _MyAnimatedContainerState createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  bool _isExpended = false;

  void _toggleIsExpend() {
    setState(() {
      _isExpended = !_isExpended;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleIsExpend,
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
        width: _isExpended ? 200 : 100,
        height: _isExpended ? 200 : 100,
        color: _isExpended ? Colors.amberAccent : Colors.blue,
        child: const Center(
          child: Text(
            'Click me',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
