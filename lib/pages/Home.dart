import 'package:another_anotherone/pages/Tasks.dart';
import 'package:flutter/material.dart';
import 'Education.dart';
import 'Environment.dart';
import 'Health.dart';
import 'package:bordered_text/bordered_text.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.dstATop),
                      image: AssetImage('build/Assets/14.png'),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                    ),
                    color: Colors.indigo[400],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      BorderedText(
                        strokeWidth: 2,
                        strokeColor: Colors.black,
                        child: Text(
                          'Weclome back!',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.indigo[400],
                            fontSize: 35,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.8,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      BorderedText(
                        strokeWidth: 2,
                        strokeColor: Colors.black,
                        child: Text(
                          'Ready to take on some challenges?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.indigo,
                        Colors.indigo[200],
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Tasks()));
                          },
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: BorderedText(
                              strokeWidth: 2,
                              strokeColor: Colors.black,
                              child: new Text(
                                'Tasks',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            decoration: new BoxDecoration(
                              color: Colors.indigo[100],
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.2),
                                    BlendMode.dstATop),
                                image: AssetImage('build/Assets/20.png'),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Education()));
                          },
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: BorderedText(
                              strokeWidth: 2,
                              strokeColor: Colors.black,
                              child: new Text(
                                'Education',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            decoration: new BoxDecoration(
                              color: Colors.indigo[100],
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.2),
                                      BlendMode.dstATop),
                                  image: AssetImage('build/Assets/ed3.jpg')),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Environment()));
                          },
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: BorderedText(
                              strokeWidth: 2,
                              strokeColor: Colors.black,
                              child: new Text(
                                'Environment',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            decoration: new BoxDecoration(
                              color: Colors.indigo[100],
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.2),
                                      BlendMode.dstATop),
                                  image: AssetImage('build/Assets/e3.jpg')),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Health()));
                          },
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: BorderedText(
                              strokeWidth: 2,
                              strokeColor: Colors.black,
                              child: new Text(
                                'Health',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            decoration: new BoxDecoration(
                              color: Colors.indigo[100],
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.2),
                                      BlendMode.dstATop),
                                  image: AssetImage('build/Assets/h2.jpg')),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
