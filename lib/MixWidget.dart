import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MixWidget extends StatefulWidget {
  const MixWidget({Key? key}) : super(key: key);

  @override
  State<MixWidget> createState() => _MixWidgetState();
}

class _MixWidgetState extends State<MixWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Text Gradient
          Text(
            "FaceBook",
            style: TextStyle(
              fontSize: 80,
              foreground: Paint()
                ..shader = LinearGradient(colors: [
                  Colors.red,
                  Colors.green,
                  Colors.orange,
                  Colors.blue,
                ]).createShader(
                  Rect.fromLTRB(80, 10, 280, 100),
                ),
            ),
          ),

          /// Show Modal Bottom Sheet
          Center(
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  backgroundColor: Colors.red,
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 500,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                    );
                  },
                );
              },
              child: Text("Log in"),
            ),
          ),
        ],
      ),
    );
  }
}
