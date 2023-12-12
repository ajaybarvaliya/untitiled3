import 'package:flutter/material.dart';

class CommanButton extends StatefulWidget {
  const CommanButton(
      {Key? key, required this.onpressed, this.text,  })
      : super(key: key);
  final onpressed;
  final text;

  @override
  State<CommanButton> createState() => _CommanButtonState();
}

class _CommanButtonState extends State<CommanButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onpressed,
      child: widget.text,
    );
  }
}
