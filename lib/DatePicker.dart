import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({Key? key}) : super(key: key);

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime initial = DateTime.now();
  DateTime data = DateTime.now();
  DateFormat format = DateFormat("dd/MM/yyyy");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          data = (await showDatePicker(
            cancelText: "Exit",
            confirmText: "Done",
            helpText: "Select Date",
            keyboardType: TextInputType.text,
            errorFormatText: "Select right choice",
            currentDate: DateTime.now(),
            context: context,
            initialDate: initial,
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
          ))!;
          setState(() {});
        },
        child: Icon(Icons.date_range),
      ),
      body: Center(
        child: Text(
          "${format.format(data)}",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
