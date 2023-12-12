import 'package:flutter/material.dart';

class ConstrantBoxDemo extends StatefulWidget {
  const ConstrantBoxDemo({Key? key}) : super(key: key);

  @override
  State<ConstrantBoxDemo> createState() => _ConstrantBoxDemoState();
}

class _ConstrantBoxDemoState extends State<ConstrantBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          /// hight width fix
          constraints: BoxConstraints(
            maxHeight: 400,
            maxWidth: 400,
            minHeight: 200,
            minWidth: 150,
          ),
          child: Container(
            height: 300,
            width: 150,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
