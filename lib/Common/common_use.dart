import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'CommonButton.dart';
import 'Common_TextField.dart';

class CommonUse extends StatefulWidget {
  const CommonUse({Key? key}) : super(key: key);

  @override
  State<CommonUse> createState() => _CommonUseState();
}

class _CommonUseState extends State<CommonUse> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CommonTextField(
              prefix: Icon(Icons.email_outlined),
              obsecure: false,
              hint: "Email",
            ),
          ),
          SizedBox(
            height: height * 0.030,
          ),
          Container(
            height: height * 0.5,
            width: 60.w,
            color: Colors.blue,
            child: Center(
              child: Text(
                "Hello",
                style: TextStyle(color: Colors.white, fontSize: 25.sp),
              ),
            ),
          ),
          CommanButton(
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Text("Done"),
                ),
              );
            },
            text: "submit",
          )
        ],
      ),
    );
  }
}
