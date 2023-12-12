import 'package:flutter/material.dart';

class AnimatedRotationDemo extends StatefulWidget {
  const AnimatedRotationDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedRotationDemo> createState() => _AnimatedRotationDemoState();
}

class _AnimatedRotationDemoState extends State<AnimatedRotationDemo> {
  double turn = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() => turn += 1.0 / 8.0);
            },
            child: Icon(Icons.add)),
        body: AnimatedRotation(
          duration: Duration(seconds: 2),
          turns: turn,
          curve: Curves.easeOut,
          child: Center(
              child: Container(height: 150, width: 150, color: Colors.blue)),
        ));
  }
}
