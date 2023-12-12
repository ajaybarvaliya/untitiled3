import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilteredDemo extends StatefulWidget {
  const ImageFilteredDemo({Key? key}) : super(key: key);

  @override
  State<ImageFilteredDemo> createState() => _ImageFilteredDemoState();
}

class _ImageFilteredDemoState extends State<ImageFilteredDemo> {
  double sigmax = 0;
  double rotation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: sigmax, sigmaY: sigmax),
            child: Image.network(
              "https://plus.unsplash.com/premium_photo-1667942321723-1b0ed998d396?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
            ),
          ),
          ImageFiltered(
            imageFilter:
                ImageFilter.matrix(Matrix4.rotationZ(rotation).storage),
            child: Text("Hello Codeline Infotech"),
          ),
          Slider(
            min: 0,
            max: 10,
            value: sigmax,
            onChanged: (double value) {
              setState(() {});
              sigmax = value;
            },
          ),
          Slider(
            min: 0,
            max: 3,
            value: rotation,
            onChanged: (double value) {
              setState(() {});
              rotation = value;
            },
          ),
        ],
      ),
    );
  }
}
