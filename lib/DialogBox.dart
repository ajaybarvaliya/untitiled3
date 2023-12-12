import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkResponse(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    alignment: Alignment.topCenter,
                    insetPadding: EdgeInsets.only(top: 100),
                    child: Container(
                      width: 180,
                      height: 300,
                      color: Colors.white,
                    ),
                  );
                },
              );
            },
            child: CircleAvatar(
              radius: 30,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkResponse(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      backgroundColor: Colors.white,
                      title: Container(
                        height: 300,
                        width: 200,
                        color: Colors.white,
                      ));
                },
              );
            },
            child: CircleAvatar(
              radius: 30,
            ),
          ),
        ],
      ),
    );
  }
}
