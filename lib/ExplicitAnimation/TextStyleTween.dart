import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextStyleTweenDemo extends StatefulWidget {
  const TextStyleTweenDemo({Key? key}) : super(key: key);

  @override
  State<TextStyleTweenDemo> createState() => _TextStyleTweenDemoState();
}

class _TextStyleTweenDemoState extends State<TextStyleTweenDemo> {
  TextStyle txt =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        onEnd: () {
          setState(() {});
          txt = txt ==
                  TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 30)
              ? TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black)
              : TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 30,
                  color: Colors.white);
        },
        duration: Duration(seconds: 1),
        builder: (BuildContext context, Object? value, Widget? child) {
          return Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
              child: Center(
                child: Text(
                  "HELLO",
                  style: txt ==
                          TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontSize: 30)
                      ? TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black)
                      : TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                          color: Colors.white),
                ),
              ),
            ),
          );
        },
        tween: TextStyleTween(
            end: txt,
            begin: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 30)),
      ),
    );
  }
}
