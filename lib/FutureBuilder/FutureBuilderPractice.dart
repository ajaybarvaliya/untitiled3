import 'package:flutter/material.dart';

class FutureBuilderPracticeDemo extends StatefulWidget {
  const FutureBuilderPracticeDemo({Key? key}) : super(key: key);

  @override
  State<FutureBuilderPracticeDemo> createState() =>
      _FutureBuilderPracticeDemoState();
}

class _FutureBuilderPracticeDemoState extends State<FutureBuilderPracticeDemo> {
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

    return " ${data}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
                child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Name:${data[index]["name"]}"),
                          Spacer(),
                          Text("Age:${data[index]["age"]}"),
                          Spacer(),
                          Text("Gender:${data[index]["gender"]}"),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ));
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
