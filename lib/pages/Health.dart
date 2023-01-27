import 'package:another_anotherone/Components/Challenge.dart';
import 'package:flutter/material.dart';

class Health extends StatefulWidget {
  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
  bool checked = true;
  final challenge = [
    ChallengeState(title: 'challenge1'),
    ChallengeState(title: 'challenge2'),
    ChallengeState(title: 'challenge3'),
    ChallengeState(title: 'challenge4'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                child: Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: new Text(
                    'Health',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: new BoxDecoration(
                    color: Colors.indigo[100],
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.2), BlendMode.dstATop),
                        image: AssetImage('build/Assets/h2.jpg')),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(40)),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'Challenges: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ...challenge.map(createCheckBox).toList(),
                    Divider(
                      height: 2.0,
                      color: Colors.indigo[200],
                      indent: 5,
                      thickness: 5,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        'Tips: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget createCheckBox(ChallengeState c) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 70,
          width: MediaQuery.of(context).size.width * 0.95,
          child: CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(c.title),
            value: c.value,
            onChanged: (bool value) {
              setState(() {
                c.value = value;
              });
            },
            activeColor: Colors.indigo[200],
            checkColor: Colors.black,
          ),
          decoration: BoxDecoration(
            color: Colors.indigo[50],
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
