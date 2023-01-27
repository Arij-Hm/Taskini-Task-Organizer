import 'package:another_anotherone/Components/Challenge.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
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
                    'Education',
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
                        image: AssetImage('build/Assets/ed1.jpg')),
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
                      alignment: Alignment.centerLeft,
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
              Container(
                child: ListView(
                  children: [
                    CarouselSlider(
                      items: [
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text('Tip 1'),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(''),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(''),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(''),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text('Hey You'),
                        ),
                      ],
                      options: CarouselOptions(
                        height: 40.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        //aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                        scrollDirection: Axis.horizontal,
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
