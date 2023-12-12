import 'package:flutter/material.dart';

class AnimatedPaddingDemo extends StatefulWidget {
  const AnimatedPaddingDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingDemo> createState() => _AnimatedPaddingDemoState();
}

class _AnimatedPaddingDemoState extends State<AnimatedPaddingDemo> {
  bool padding = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            padding = !padding;
          });
        },
        child: Icon(Icons.add),
      ),
      body: AnimatedPadding(
        duration: Duration(seconds: 2),
        padding: padding ? EdgeInsets.all(100) : EdgeInsets.all(200),
        child: Container(width: 150, height: 150, color: Colors.orange),
      ),
    );
  }
}
