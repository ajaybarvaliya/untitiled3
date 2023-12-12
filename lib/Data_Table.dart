import 'package:flutter/material.dart';

class DataTableDemo extends StatefulWidget {
  const DataTableDemo({Key? key}) : super(key: key);

  @override
  State<DataTableDemo> createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  List<Map<String, dynamic>> data = [
    {
      "no": 1,
      "Name": "Kishan",
      "lastname": "Khunt",
      "Age": 19,
      "number": 1234567890,
      "Emial": "kishan@gmail.com",
    },
    {
      "no": 2,
      "Name": "Raaj",
      "lastname": "vavaliya",
      "Age": 19,
      "number": 1234567890,
      "Emial": "raaj@gmail.com",
    },
    {
      "no": 3,
      "Name": "KP",
      "lastname": "Markana",
      "Age": 22,
      "number": 1234567890,
      "Emial": "kp@gmail.com",
    },
    {
      "no": 4,
      "Name": "Het",
      "lastname": "Dhameliya",
      "Age": 19,
      "number": 1234567890,
      "Emial": "het@gmail.com",
    },
    {
      "no": 5,
      "Name": "Ajay",
      "lastname": "Barvaliya",
      "Age": 19,
      "number": 1234567890,
      "Emial": "ajay@gmail.com",
    },
    {
      "no": 6,
      "Name": "Ketul",
      "lastname": "Ranoliya",
      "Age": 20,
      "number": 1234567890,
      "Emial": "ketul@gmail.com",
    },
    {
      "no": 1,
      "Name": "Kishan",
      "lastname": "Khunt",
      "Age": 19,
      "number": 1234567890,
      "Emial": "kishan@gmail.com",
    },
    {
      "no": 2,
      "Name": "Raaj",
      "lastname": "vavaliya",
      "Age": 19,
      "number": 1234567890,
      "Emial": "raaj@gmail.com",
    },
    {
      "no": 3,
      "Name": "KP",
      "lastname": "Markana",
      "Age": 22,
      "number": 1234567890,
      "Emial": "kp@gmail.com",
    },
    {
      "no": 4,
      "Name": "Het",
      "lastname": "Dhameliya",
      "Age": 19,
      "number": 1234567890,
      "Emial": "het@gmail.com",
    },
    {
      "no": 5,
      "Name": "Ajay",
      "lastname": "Barvaliya",
      "Age": 19,
      "number": 1234567890,
      "Emial": "ajay@gmail.com",
    },
    {
      "no": 6,
      "Name": "Ketul",
      "lastname": "Ranoliya",
      "Age": 20,
      "number": 1234567890,
      "Emial": "ketul@gmail.com",
    },
    {
      "no": 1,
      "Name": "Kishan",
      "lastname": "Khunt",
      "Age": 19,
      "number": 1234567890,
      "Emial": "kishan@gmail.com",
    },
    {
      "no": 2,
      "Name": "Raaj",
      "lastname": "vavaliya",
      "Age": 19,
      "number": 1234567890,
      "Emial": "raaj@gmail.com",
    },
    {
      "no": 3,
      "Name": "KP",
      "lastname": "Markana",
      "Age": 22,
      "number": 1234567890,
      "Emial": "kp@gmail.com",
    },
    {
      "no": 4,
      "Name": "Het",
      "lastname": "Dhameliya",
      "Age": 19,
      "number": 1234567890,
      "Emial": "het@gmail.com",
    },
    {
      "no": 5,
      "Name": "Ajay",
      "lastname": "Barvaliya",
      "Age": 19,
      "number": 1234567890,
      "Emial": "ajay@gmail.com",
    },
    {
      "no": 6,
      "Name": "Ketul",
      "lastname": "Ranoliya",
      "Age": 20,
      "number": 1234567890,
      "Email": "ketul@gmail.com",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var columnlength = data.first.keys.toList();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                DataTable(
                  border: TableBorder.all(color: Colors.green),
                  columns: List.generate(
                    columnlength.length,
                    (index) => DataColumn(
                      label: Text("${columnlength[index]}"),
                    ),
                  ),
                  rows: List.generate(
                    data.length,
                    (index) => DataRow(
                      cells: List.generate(
                        columnlength.length,
                        (index1) => DataCell(
                          Text("${data[index]["${columnlength[index1]}"]}"),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
