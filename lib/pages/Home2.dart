/*import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'AddTask.dart';
import 'dart:math';
import 'package:flutter_slidable/flutter_slidable.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String datetype = 'Monthly';
  String taskPop = "close";
  var monthNames = [
    "JAN",
    "FEB",
    "MAR",
    "APR",
    "MAY",
    "JUN",
    "JUL",
    "AUG",
    "SEPT",
    "OCT",
    "NOV",
    "DEC"
  ];
  DateTime today = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay;
  //Color _randomColor =
    //  Colors.primaries[Random().nextInt(Colors.primaries.length)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.indigo[300],
                elevation: 0,
                title: Text(
                  'Work List',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                actions: [
                  IconButton(
                      icon: Icon(Icons.border_top_sharp), onPressed: () {}),
                ],
              ),
              Container(
                height: 70,
                color: Colors.indigo[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            datetype = 'Today';
                          },
                          child: Text(
                            'Today',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 5,
                          width: MediaQuery.of(context).size.width * 0.3,
                          color: (datetype == 'Today'
                              ? Colors.white
                              : Colors.transparent),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            datetype = 'Monthly';
                          },
                          child: Text(
                            'Monthly',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 5,
                          width: MediaQuery.of(context).size.width * 0.3,
                          color: (datetype == 'Monthly'
                              ? Colors.white
                              : Colors.transparent),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              (datetype == 'Monthly'
                  ? TableCalendar(
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      focusedDay: DateTime.now(),
                      firstDay: DateTime.utc(2010, 5, 10),
                      lastDay: DateTime.utc(2030, 3, 14),
                      calendarFormat: _calendarFormat,
                      onFormatChanged: (format) {
                        setState(() {
                          _calendarFormat = format;
                        });
                      },
                      selectedDayPredicate: (day) {
                        return isSameDay(_selectedDay, day);
                      },
                      onDaySelected: (selectedDay, focusedDay) {
                        if (!isSameDay(_selectedDay, selectedDay)) {
                          setState(() {
                            _selectedDay = selectedDay;
                            today = focusedDay;
                          });
                        }
                      },
                      onPageChanged: (focusedDay) {
                        // No need to call `setState()` here
                        today = focusedDay;
                      },
                    )
                  : Container()),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Today ${monthNames[today.month - 1]}, ${today.day}/${today.year}",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.indigo[100]),
                            ),
                          ],
                        ),
                      ),
                      /*taskWidget(
                          Colors.primaries[
                                  Random().nextInt(Colors.primaries.length)]
                              [Random().nextInt(9) * 100],
                          "Online Course.",
                          "9:00 AM"),
                      taskWidget(
                          Colors.primaries[
                                  Random().nextInt(Colors.primaries.length)]
                              [Random().nextInt(9) * 100],
                          "Project",
                          "11:00 AM"),
                      taskWidget(
                          Colors.primaries[
                                  Random().nextInt(Colors.primaries.length)]
                              [Random().nextInt(9) * 100],
                          "Take a nap",
                          "1:00 PM"),*/
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.indigo[300],
              height: 50,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned(
            bottom: 15,
            left: MediaQuery.of(context).size.width * 0.4,
            right: MediaQuery.of(context).size.width * 0.4,
            child: ElevatedButton(
              child: Text(
                '+',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Task()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.indigo[200],
                shape: CircleBorder(),
                padding: EdgeInsets.all(20),
                elevation: 5,
              ),
            ),
          )
        ],
      ),
    );
  }

  /* Slidable taskWidget(Color color, String title, String time) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.3,
      child: Container(
        height: 80,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.03),
              offset: Offset(0, 9),
              blurRadius: 20,
              spreadRadius: 1)
        ]),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: color, width: 4)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Text(
                  time,
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                )
              ],
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              height: 50,
              width: 5,
              color: color,
            )
          ],
        ),
      ),
      secondaryActions: [
        IconSlideAction(
          caption: "Edit",
          color: Colors.white,
          icon: Icons.edit,
          onTap: () {},
        ),
        IconSlideAction(
          caption: "Delete",
          color: color,
          icon: Icons.delete_forever_rounded,
          onTap: () {},
        )
      ],
    );
  }*/
}*/
