import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//import 'package:get/get.dart';

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  DateTime _date = DateTime.now();
  TimeOfDay _stime = TimeOfDay.now();
  TimeOfDay _etime = TimeOfDay.now();
  TextEditingController _edit = TextEditingController();
  final DateFormat _dateFormat = DateFormat('MMM dd, yyyy');
  String title;
  bool checked;

  void _datepicker() async {
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2010),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.indigo[200],
            colorScheme: ColorScheme.light(primary: Colors.indigo[300]),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child,
        );
      },
    );
    if (date != null && date != _date) {
      setState(() {
        _date = date;
      });
      _edit.text = _dateFormat.format(date);
    }
  }

  void _stimepicker() async {
    final TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: _stime,
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.indigo[200],
            colorScheme: ColorScheme.light(primary: Colors.indigo[300]),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child,
        );
      },
    );
    if (time != null && time != _stime) {
      setState(() {
        _stime = time;
      });
    }
  }

  void _etimepicker() async {
    final TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: _etime,
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.indigo[200],
            colorScheme: ColorScheme.light(primary: Colors.indigo[300]),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child,
        );
      },
    );
    if (time != null && time != _etime) {
      setState(() {
        _etime = time;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
              child: Text(
                'Create Task',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 40.0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20.0,
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Colors.indigo[300],
                    ),
                  ),
                  hintText: 'Task Title',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _edit,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                    onTap: () {
                      _datepicker();
                    },
                    decoration: InputDecoration(
                      labelText: 'Date',
                      labelStyle: TextStyle(
                        color: Colors.indigo[300],
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.indigo[300],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  OutlinedButton.icon(
                    onPressed: () {
                      _stimepicker();
                    },
                    icon: Icon(
                      Icons.alarm_add_outlined,
                      color: Colors.indigo[300],
                    ),
                    label: Text(
                      "Start Time: ${_stime.format(context)}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.indigo[300],
                      padding: EdgeInsets.fromLTRB(52.5, 20.0, 52.5, 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      side: BorderSide(
                        color: Colors.indigo[300],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  OutlinedButton.icon(
                    onPressed: () {
                      _etimepicker();
                    },
                    icon: Icon(
                      Icons.alarm_add_outlined,
                      color: Colors.indigo[300],
                    ),
                    label: Text(
                      "End Time: ${_etime.format(context)}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.indigo[300],
                      padding: EdgeInsets.fromLTRB(58, 20.0, 58, 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      side: BorderSide(
                        color: Colors.indigo[300],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.indigo[200],
                  padding:
                      EdgeInsets.symmetric(horizontal: 45.0, vertical: 12.5)),
            ),
          ],
        ),
      ),
    );
  }
}
