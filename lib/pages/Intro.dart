import 'Home.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int currentPage;
  PageController control = new PageController(
    initialPage: 0,
    keepPage: true,
  );

  Column page(String img, String title, String desc) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: 200,
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('build/Assets/$img'),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            '$title',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Text(
            '$desc',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }

  setcurrentpage(int val) {
    currentPage = val;
    setState(() {});
  }

  AnimatedContainer indicator(int numpage) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 10,
      width: (currentPage == numpage) ? 20 : 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color:
            (currentPage == numpage) ? Colors.indigo[400] : Colors.indigo[200],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: PageView(
                  controller: control,
                  children: [
                    page('22.png', 'Welcome To Taskini', ''),
                    page('16.png', 'Organize your tasks.', 'All in one place.'),
                    page('13.png', 'Set your goals. Achieve them.',
                        'Get your tasks done on time.'),
                  ],
                  onPageChanged: (value) => (setcurrentpage(value)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) => indicator(index)),
              ),
            ],
          ),
          SizedBox(height: 10),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.only(top: 20),
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('build/Assets/18.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(0, 9),
                            blurRadius: 20,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      child: Text(
                        "Get Started",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      /* floatingActionButton: Container(
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.white12,
              blurRadius: 30,
            ),
          ],
        ),
        child: RawMaterialButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Health()));
          },
        ),
      ),*/
    );
  }
}
