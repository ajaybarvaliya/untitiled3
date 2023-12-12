import 'dart:async';

import 'package:flutter/material.dart';

class Stream_bulide_practice extends StatefulWidget {
  const Stream_bulide_practice({Key? key}) : super(key: key);

  @override
  State<Stream_bulide_practice> createState() => _Stream_bulide_practiceState();
}

class _Stream_bulide_practiceState extends State<Stream_bulide_practice> {
  List lst = [];
  TextEditingController txt = TextEditingController();
  StreamController counter = StreamController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
          ),
          Center(
            child: TextFormField(
              controller: txt,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                constraints: BoxConstraints(maxWidth: 200),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {});
                lst.add(txt.text);
                counter.sink.add(lst);
                txt.clear();
              },
              child: Text("Add to List")),
          StreamBuilder(
            stream: counter.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: lst.length,
                  itemBuilder: (context, index) {
                    return Text("${lst[index]}");
                  },
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
