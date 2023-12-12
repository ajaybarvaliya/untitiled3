import 'package:flutter/material.dart';

class FutureBuilderDemo extends StatefulWidget {
  const FutureBuilderDemo({Key? key}) : super(key: key);

  @override
  State<FutureBuilderDemo> createState() => _FutureBuilderDemoState();
}

class _FutureBuilderDemoState extends State<FutureBuilderDemo> {
  List<Map<String, dynamic>> data = [
    {
      "name": "Kishan",
      "age": 19,
      "gender": "Male",
    },
    {
      "name": "Raaj",
      "age": 19,
      "gender": "Male",
    },
    {
      "name": "KP",
      "age": 19,
      "gender": "Male",
    },
  ];

  Future<String> getData() async {
    print("Hello");
    await Future.delayed(Duration(seconds: 2));

    print("Hello Codeline");

    return "Hello Codeline";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: Text(
                "${snapshot.data}",
                style: TextStyle(fontSize: 20),
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Something Wan't Wrong"),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
