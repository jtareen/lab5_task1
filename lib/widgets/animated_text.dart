import 'package:flutter/material.dart';

class MyAnimatedText extends StatefulWidget {
  final String text;

  const MyAnimatedText({super.key, required this.text});

  @override
  _MyAnimatedText createState() => _MyAnimatedText();
}

class _MyAnimatedText extends State<MyAnimatedText> {
  bool _isVisible = true;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedOpacity(
          opacity: _isVisible ? 1 : 0,
          duration: const Duration(seconds: 1),
          child: Text(
            widget.text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: _toggleVisibility,
            child: Text(_isVisible
                ? 'Click Here to hide text'
                : 'Click Here to show text'))
      ],
    );
  }
}
