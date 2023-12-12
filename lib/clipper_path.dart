import 'package:flutter/material.dart';

class CliperPath extends StatefulWidget {
  const CliperPath({super.key});

  @override
  State<CliperPath> createState() => _CliperPathState();
}

class _CliperPathState extends State<CliperPath> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                width: 300,
                height: 200,
                color: Colors.yellow,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    // path.lineTo(size.height, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
