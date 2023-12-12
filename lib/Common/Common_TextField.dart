import 'package:flutter/material.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField(
      {Key? key,
      this.hint,
      this.prefix,
      this.suffix,
      required this.obsecure,
      this.controller})
      : super(key: key);

  final hint;
  final prefix;
  final suffix;
  final obsecure;
  final controller;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.obsecure,
      decoration: InputDecoration(
        hintText: widget.hint,
        prefixIcon: widget.prefix,
        suffixIcon: widget.suffix,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
