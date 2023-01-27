//import 'package:another_anotherone/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:another_anotherone/pages/Intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: Scaffold(
        extendBody: true,
        body: Container(
          child: AnimatedSplashScreen(
            splash: Container(
              child: Image.asset(
                'build/Assets/Dango3.jpg',
                height: 2000,
                width: 2000,
              ),
            ),
            nextScreen: Intro(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.white,
            duration: 1000,
          ),
        ),
      ),
    );
  }
}

/*class Fonc extends StatefulWidget {
  @override
  _FoncState createState() => _FoncState();
}

class _FoncState extends State<Fonc> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), openHome);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("build\Assets\Dango3.jpg"),
            ),
          ),
        ),
      ),
    );
  }

  void openHome() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }
}
*/
